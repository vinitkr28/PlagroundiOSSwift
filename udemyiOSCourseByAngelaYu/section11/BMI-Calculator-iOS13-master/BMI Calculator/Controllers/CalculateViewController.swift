//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var height: Float = 0.0
    var weight: Float = 0
    
    var calculateBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("viewDidLoad")
    }
    
    @IBAction func hightSliderChange(_ sender: UISlider) {
        
        print("hightSliderChange: \(String(format: "%.2f", sender.value))")
        
        height = sender.value
        heightLabel.text = "\(String(format: "%.2f", height))m"
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        
        print("weightSliderChange: \(String(format: "%.0f", sender.value))")
        print("weightSliderChange: \(Int(sender.value))")
        
        weight = Float(sender.value)
        weightLabel.text = "\(String(weight))Kg"
        
        
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print("BMI: \(calculateBMI())")
        
        //        goToSecondViewController()
        
        goToResultViewController()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            
            /*
             let destinationVC = segue.destination as! ResultViewController
             //            destinationVC.bmiValue = String(format: "%.1f", calculateBMI())
             destinationVC.bmiValue = calculateBMI()
             
             */
            
            
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculateBrain.getBmiValue()
            destinationVC.advice = calculateBrain.getBmiAdvice()
            destinationVC.category = calculateBrain.getBmiCategory()
            destinationVC.color = calculateBrain.getBmiColor()
            //            destinationVC.advice = calculateBrain.bmi?.advice
            //            destinationVC.category = calculateBrain.bmi?.category
            //            destinationVC.color = calculateBrain.bmi?.color
        }
    }
    
    
    func calculateBMI() -> String{
        let a = Float(weight)
        
        //        return a / (height * height)
        //        return a / pow(height, 2)
        
        calculateBrain.calculateBMI(height: height, weight: weight)
        
        return calculateBrain.getBmiValue()
    }
    
    func goToSecondViewController(){
        let secondVC = SecondViewController()
        secondVC.modalPresentationStyle = .fullScreen
        present(secondVC, animated: true)
    }
    
    func goToResultViewController(){
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
}

