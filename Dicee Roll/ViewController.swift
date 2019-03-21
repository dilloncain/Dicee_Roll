//
//  ViewController.swift
//  Dicee Roll
//
//  Created by Dillon Cain on 3/18/19.
//  Copyright © 2019 Cain Computers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    // Initialize dice count for each
    

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
        // Loads upon opening application
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
        // When (Roll) button is pressed
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
        // Shake gesture
        // After shaking phone, dice images will change (Adds to throwing dice, a sense of interactive play)
    }
    
        // Group together similar commands with the use of functions (Package up everything)
    func updateDiceImages() {
        let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
        // Array of dice String image names 1 - 6
        
        randomDiceIndex1 = Int.random(in: 0...5)
        randomDiceIndex2 = Int.random(in: 0...5)
        // Random number generation for dice - (range)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        // Represents image for first
        
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        // Represents image for second
        
    }
    
}

