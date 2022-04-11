import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var bmiLabel: UILabel!
    var resultbmiValue: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = resultbmiValue
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
