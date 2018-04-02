//
//  LightsOutGame.h
//  Lights Out Universal
//
//  Created by CSSE Department on 4/1/18.
//  Copyright © 2018 Rose-Hulman. All rights reserved.
//

#import <Foundation/Foundation.h>
#define MAX_NUM_LIGHTS 100


@interface LightsOutGame : NSObject {
    BOOL lightStates[MAX_NUM_LIGHTS];
}

@property (nonatomic) int movesTaken;
@property (nonatomic) int numLights; 

-(id) initWithNumLights: (NSInteger) numLights;
-(BOOL) pressedLightAtIndex: (NSInteger) index;
-(BOOL) isLightOnAtIndex: (NSInteger) index;
-(BOOL) checkForWin;

@end
