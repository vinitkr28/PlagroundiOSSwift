//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Vinit on 29/11/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftDiceNumber = 1
    
    
    let diceImages = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //diceImageView1.image = #imageLiteral(resourceName: "DiceFive")
        //diceImageView2.image = #imageLiteral(resourceName: "DiceSix")
        
        //diceImageView1.alpha = 0.5
        
        
        
    }

    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        print("Button got pressed")
        
        
        //diceImageView1.image = #imageLiteral(resourceName: "DiceTwo")
        //diceImageView2.image = #imageLiteral(resourceName: "DiceOne")
        
        //print("Example of String Interpolation: 2 + 3 = \(2+3) World")
        
        
        
        //diceImageView1.image = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")][5]
        
        diceImageView1.image = diceImages[leftDiceNumber]
        
        leftDiceNumber = Int.random(in: 0...5)
        
        //diceImageView2.image = diceImages[Int.random(in: 0...5)]
        
        diceImageView2.image = diceImages.randomElement()
        
        
        
        
    }

}

