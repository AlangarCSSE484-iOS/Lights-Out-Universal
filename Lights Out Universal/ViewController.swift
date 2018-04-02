//
//  ViewController.swift
//  Lights Out Universal
//
//  Created by CSSE Department on 3/15/18.
//  Copyright © 2018 Rose-Hulman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var gameBoardButtons: [UIButton]!
    
    @IBOutlet weak var gameStateLabel: UILabel!
    @IBOutlet weak var gameStateNavBar: UINavigationBar!
   // var game = LightsOutGame(numLights: 13)
    var game = LightsOutGame.init(numLights: 13)
    var onLight = #imageLiteral(resourceName: "light_on")
    var offLight = #imageLiteral(resourceName: "light_off")
    
    @IBAction func pressedNewGame(_ sender: Any) {
      //  game = LightsOutGame(numLights: 13)
        game = LightsOutGame.init(numLights: 13)
        updateView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gameStateNavBar.titleTextAttributes = [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 20)]
        updateView()
        
    }
    
    @IBAction func gameButtonPressed(_ sender: Any) {
        let gameBoardButtons = sender as! UIButton
        game!.pressedLight(at: gameBoardButtons.tag)
        updateView()
        
    }
    
    
    func updateView() {
        if (game!.checkForWin()){
            gameStateLabel.text = "You won in \(game!.movesTaken) moves!"
        } else {
            gameStateLabel.text = "You have made \(game!.movesTaken) moves."
        }
        for i in 0..<13 {
            let button = gameBoardButtons[i]
            if (game!.isLightOn(at: i)){
                button.setImage(onLight, for: UIControlState.normal)
            } else {
                button.setImage(offLight, for: UIControlState.normal)
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

