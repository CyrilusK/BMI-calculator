import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func choicedHeight(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value) + " м"
    }
    
    @IBAction func choicedWeight(_ sender: UISlider) {
        weightLabel.text = String(format: "%.0f", sender.value) + " кг"
    }
    
}

