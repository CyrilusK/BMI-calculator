import Foundation

struct CalculateBMI {
    var bmiValue : Float = 0
    
    mutating func calculateBMI(height: Float, weight: Float) -> Void {
        bmiValue = weight / (height * height)
    }
    
    func getBMIValueInString() -> String {
        return String(format: "%.1f", bmiValue)
    }
    
}
