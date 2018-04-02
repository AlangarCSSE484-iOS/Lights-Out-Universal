//
//  LightsOutGame.m
//  Lights Out Universal
//
//  Created by CSSE Department on 4/1/18.
//  Copyright © 2018 Rose-Hulman. All rights reserved.
//

#import "LightsOutGame.h"

@implementation LightsOutGame

-(id) initWithNumLights: (NSInteger) numLights{
    self = [super init];
    if (self) {
        self.movesTaken = 0;
        self.numLights = (int) numLights;
        for (int i = 0; i < numLights; i++){
            //randomly select on or off
            NSInteger rand = arc4random_uniform(2);
            lightStates[i] = (rand == 0) ? YES : NO;
        }
    }
    return self;
}

-(BOOL) pressedLightAtIndex: (NSInteger) index{
    if (index >= self.numLights){
        return false;
    }
    if ([self checkForWin]) {
        return true;
    }
    self.movesTaken += 1;
    lightStates[index] = !lightStates[index];
    if (index > 0) {
        lightStates[index - 1] = !lightStates[index - 1];
    }
    if (index < self.numLights - 1) {
        lightStates[index + 1] = !lightStates[index + 1];
    }
    return [self checkForWin];
    
}

-(BOOL) isLightOnAtIndex: (NSInteger) index{
    return lightStates[index];
}

-(NSString*) getGameString {
    NSMutableString* gameBoardString = [[NSMutableString alloc] init];
    for (int i = 0; i < self.numLights; i++){
        NSString* toAppend = ([self isLightOnAtIndex:i]) ? @"1" : @"0";
        [gameBoardString appendString:toAppend];
    }
    return gameBoardString;
}

-(BOOL) checkForWin{
    return (![[self getGameString] containsString:@"1"]);
}

@end
