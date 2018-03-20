//
//  ViewController.swift
//  Lights Out Universal
//
//  Created by CSSE Department on 3/15/18.
//  Copyright © 2018 Rose-Hulman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var gameStateLabel: UILabel!
    @IBOutlet weak var gameStateNavBar: UINavigationBar!
    
    @IBAction func pressedNewGame(_ sender: Any) {
        print("You pressed new game!")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        gameStateNavBar.titleTextAttributes = [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 20)]
    }
        
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

