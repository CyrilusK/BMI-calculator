import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightValue: UISlider!
    @IBOutlet weak var weightValue: UISlider!
    var bmi : Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func choicedHeight(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value) + " м"
    }
    
    @IBAction func choicedWeight(_ sender: UISlider) {
        weightLabel.text = String(format: "%.0f", sender.value) + " кг"
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let height = heightValue.value
        let weight = weightValue.value
        bmi = weight / (height * height)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = String(format: "%.1f", bmi)
        }
    }
    
}

