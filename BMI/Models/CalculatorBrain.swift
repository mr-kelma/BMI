//
//  CalculatorBrain.swift
//  BMI
//
//  Created by Valery Keplin on 14.06.22.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        
        let bmiValue = weight / pow(height, 2)
        
        switch bmiValue {
        case 0..<18.5:
            bmi = BMI(value: bmiValue, advice: "Ешь больше булок!", color: UIColor{_ in return #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)})
        case 18.5...24.9:
            bmi = BMI(value: bmiValue, advice: "Так держать!", color: UIColor{_ in return #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)})
        case 25.0...29.9:
            bmi = BMI(value: bmiValue, advice: "Давайка начинать что-то менять!", color: UIColor{_ in return #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)})
        case 30.0...34.9:
            bmi = BMI(value: bmiValue, advice: "Ты переходишь черту!", color: UIColor{_ in return #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)})
        case 35.0...:
            bmi = BMI(value: bmiValue, advice: "Одумайся!", color: UIColor{_ in return #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)})
        default:
            bmi = BMI(value: bmiValue, advice: "Calculation error", color: UIColor{_ in return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)})
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Advice error"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor{_ in return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)}
    }
}
