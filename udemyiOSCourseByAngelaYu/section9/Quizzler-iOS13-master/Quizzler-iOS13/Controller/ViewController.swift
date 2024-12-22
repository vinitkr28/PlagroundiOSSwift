//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    
    /*
     let quiz = [
     "Four + Two is equal to Six?",
     "Five - Three is equal to One?",
     "Three + Eight is equal to Ten?",
     ]
     */
    

    var timer: Timer?
    var score = 0
    
    var quizBrain = QuizBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
//        questionLabel.text = quiz[questionNumber].text
//        progressBar.progress = 0.0
        
        
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        print("Button Clicked: \(sender.currentTitle!)")
        
        let userGotItRight = quizBrain.checkAnswer(sender.titleLabel!.text!)
        
        if userGotItRight {
            print("Correct!")
            score += 1
            sender.backgroundColor = UIColor.green
        } else {
            print("Incorrect!")
            sender.backgroundColor = UIColor.red
        }
        
        if quizBrain.questionNumber < quizBrain.quiz.count - 1 {
            quizBrain.questionNumber += 1
            
        } else {
            print("Quiz Complete!")
            score = 0
            scoreLabel.text = "Score: 0"
            quizBrain.questionNumber = 0
        }
        
//        updateUI()
        
        timer?.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    
    @objc func updateUI() {
        scoreLabel.text = "Score: \(score)"
        questionLabel.text = quizBrain.quiz[quizBrain.questionNumber].text
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        
        let progress = Double(quizBrain.questionNumber + 1) / Double(quizBrain.quiz.count)
        
        progressBar.progress = Float(progress)
    }
    
}




