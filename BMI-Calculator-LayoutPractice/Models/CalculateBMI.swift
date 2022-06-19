import UIKit

struct CalculateBMI {
    var bmi : BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) -> Void {
        let bmiValue = weight / (height * height)
        bmi = BMI(value: bmiValue, advice: setAdvice(bmi: bmiValue),
                 color: UIColor(named: setAdvice(bmi: bmiValue)) ?? UIColor.clear)
        
    }
    
    func getBMIValueInString() -> String {
        return String(format: "%.1f", bmi?.value ?? 0)
    }
    
    func setAdvice(bmi: Float) -> String {
        if bmi < 18.5 {
            return "Съешьте больше пирогов!"
        }
        else if bmi < 24.9 {
            return "Идеально!"
        }
        else {
            return "Съешьте меньше пирогов!"
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "There is not advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.clear
    }
    
}
