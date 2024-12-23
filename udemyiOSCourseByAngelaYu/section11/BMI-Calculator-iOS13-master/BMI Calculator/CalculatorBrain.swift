//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Vinit on 24/12/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation
import UIKit


struct CalculatorBrain{
    
    
    var bmi:BMI?
    

    
    func getBmiValue() -> String{
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
        
    }
    
    func getBmiCategory() -> String{
        return bmi?.category ?? "NA"
    }
    
    func getBmiAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getBmiColor() -> UIColor{
        return bmi?.color ?? #colorLiteral(red: 0.9999999999999999, green: 0.9999999999999999, blue: 0.9999999999999999, alpha: 1)
    }
    
    
    mutating func calculateBMI(height: Float, weight:Float) {
        let bmiValue = weight / (height * height)
        
     
            if bmiValue < 18.5{
                bmi = BMI(value: bmiValue, category: "Underweight", advice: "Eat more pies!", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
//                return "Underweight"
            }else if bmiValue >= 18.5 && bmiValue < 24.9{
                bmi = BMI(value: bmiValue, category: "Normal", advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.9999999999999999, green: 0.9999999999999999, blue: 0.9999999999999999, alpha: 1))
//                return "Normal"
            }else if bmiValue >= 24.9 && bmiValue < 30{
                bmi = BMI(value: bmiValue, category: "Overweight", advice: "Eat less pies!", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
//                return "Overweight"
            }else{
                bmi = BMI(value: bmiValue, category: "Obese", advice: "Eat less pies & do exercises!", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
//                return "Obese"
            }
    
        
//        bmi = BMI(value: bmiValue, advice:  "", color: <#T##UIColor#>.green)
    }
    
}
