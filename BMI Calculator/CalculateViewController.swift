import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightslider: UISlider!

    var bmiValue = "0.0"

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        //print(sender.value)
        //print(String(format: "%.2f", sender.value))
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }

    @IBAction func weightSliderChanged(_ sender: UISlider) {
        //print(sender.value)
        //print(String(format: "%.0f", sender.value))
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)kg"
    }

    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let getHeight = heightSlider.value
        let getWeight = weightslider.value

        //let bmiResult = getWeight / (getHeight * getHeight)
        let bmiResult = getWeight / pow(getHeight, 2)

        //print(bmiResult)
        bmiValue = String(format: "%.1f", bmiResult)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.resultbmiValue = bmiValue
        }
    }
}
