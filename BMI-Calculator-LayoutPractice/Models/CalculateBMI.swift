import Foundation

struct CalculateBMI {
    var bmi : BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) -> Void {
        bmi?.value = weight / (height * height)
    }
    
    func getBMIValueInString() -> String {
        return String(format: "%.1f", bmi?.value ?? 0)
    }
    
}
