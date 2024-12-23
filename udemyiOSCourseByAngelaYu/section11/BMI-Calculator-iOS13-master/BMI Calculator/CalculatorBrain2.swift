import Foundation

struct CalculatorBrain2{
    
    
    var bmi:Float?
    
    func getBmiValueType() -> String{
        if let bmiValue = bmi{
            if bmiValue < 18.5{
                return "Underweight"
            }else if bmiValue >= 18.5 && bmiValue < 24.9{
                return "Normal"
            }else if bmiValue >= 24.9 && bmiValue < 30{
                return "Overweight"
            }else{
                return "Obese"
            }
        }
        
        return ""
    }
    
    func getBmiValue() -> String{
        if bmi != nil {
            let bmiTo1DecimalPlace = String(format: "%.1f", bmi!)
            return bmiTo1DecimalPlace
        }
        return "0.0"
    }
    
    func getBmiValue2() -> String{
        if let sameBmiValue = bmi{
//            return sameBmiValue < 18.5 ? "Underweight" : sameBmiValue >= 18.5 && sameBmiValue < 25 ? "Normal" : sameBmiValue >= 25 && sameBmiValue < 30 ? "Overweight" : "Obese"
            let bmiTo1DecimalPlace = String(format: "%.1f", sameBmiValue)
            return bmiTo1DecimalPlace
        }
        return "0.0"
    }
    
    
    func getBmiValue3() -> String{
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight:Float) {
        bmi = weight / (height * height)
    }
    
}
