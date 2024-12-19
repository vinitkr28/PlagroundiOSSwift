//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let softTime = 5
    let mediumTime = 10
    let hardTime = 15
    
//    var secondsRemaining = 60
    
    var totalTime: Int = 0
    var secondsPassed: Int = 0
    
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    
    var timer = Timer()
    

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBAction func eggClicked(_ sender: UIButton) {
        
        progressBar.progress = 0
        secondsPassed = 0
        
        print(sender.currentTitle)
        
        let hardness = sender.currentTitle!
        
//        secondsRemaining = eggTimes[hardness]!
        
        totalTime = eggTimes[hardness]!
        
        
        switch sender.currentTitle {
        case "Soft":
            print("Soft")
        case "Medium":
            print("Medium")
        case "Hard":
            print("Hard")
        default:
            print("default")
        }
        
        
        timer.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector:
                    #selector(countDown), userInfo: nil, repeats: true)
        
        
    }
    
    
    
    @objc func countDown() {
        if secondsPassed < totalTime {
                 print("\(secondsPassed) seconds.")
            
//            let percentageProgress = Float(secondsPassed/totalTime)
            let percentageProgress = Float(secondsPassed)/Float(totalTime)
            
            
            print(percentageProgress)
            
            progressBar.progress = Float(percentageProgress)
                 secondsPassed += 1
            
             } else {
                 timer.invalidate()
                 titleLabel.text = "Done!"
                 progressBar.progress = 1
             }
        }
    
    
    
    /*
    
    @objc func countDown() {
             if secondsRemaining > 0 {
                 print("\(secondsRemaining) seconds.")
                secondsRemaining -= 1
            
             } else {
                 timer.invalidate()
                 titleLabel.text = "Done!"
                 progressBar.progress = 1
             }
        }
     
     */
    
}
