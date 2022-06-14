import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightValue: UISlider!
    @IBOutlet weak var weightValue: UISlider!
    
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
        let bmi = weight / (height * height)
        print(bmi)
    }
    
}

