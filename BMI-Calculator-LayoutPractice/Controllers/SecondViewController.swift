
import UIKit

class SecondViewController: UIViewController {
    
    var textLabel = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        let label = UILabel()
        label.text = textLabel
        label.frame = CGRect(x: 100, y: 200, width: 100, height: 50)
        view.addSubview(label)
    }
}
