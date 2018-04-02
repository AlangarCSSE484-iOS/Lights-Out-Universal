//  LightsOutGame.swift
//  Lights Out Universal

//import Foundation
//import UIKit
//
//class LinearLightsOutGame: CustomStringConvertible {
//
//    var lightStates:[Bool]
//    var moves:Int
//    var numLights:Int
//
//
//    var description: String {
//        return "Lights: \(getGameString()) Moves: \(moves)"
//    }
//
//    func getGameString() -> String {
//        var gameString = ""
//        for i in 0..<numLights {
//            gameString += String(lightStates[i] ? 1:0)
//        }
//        return gameString
//    }
//
//    init(numLights: Int) {
//        self.moves = 0
//        self.numLights = numLights
//        self.lightStates = [Bool]()
//        for _ in 0..<numLights {
//            self.lightStates.append(Int(arc4random_uniform(2)) == 0 ? true: false)
//        }
//    }
//
//    func pressedLightAtIndex(_ index:Int) -> Bool {
//        if index >= numLights{
//            return false //Out of bounds
//        }
//        if checkForWin(){
//            return true
//        }
//        moves += 1
//        lightStates[index] = !lightStates[index]
//        if index > 0 {
//            lightStates[index - 1] = !lightStates[index - 1]
//        }
//        if index < numLights - 1 {
//            lightStates[index + 1] = !lightStates[index + 1]
//        }
//        return checkForWin()
//    }
//
//    func checkForWin() -> Bool {
//        var winString = ""
//        for _ in 0..<numLights {
//            winString += "0"
//        }
//        return getGameString() == winString
//    }
//}

