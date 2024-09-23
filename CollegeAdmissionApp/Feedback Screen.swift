import UIKit

class Feedback_Screen: UIViewController {

    @IBOutlet weak var usefulInfo: UISwitch!
    @IBOutlet weak var experience: UIStepper!
    @IBOutlet weak var satisfiedScale: UISlider!
    @IBOutlet weak var submit: UIButton!
    @IBOutlet weak var doneMsg: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        submit.layer.cornerRadius = 8
    }

    // Action for submit button tap
    @IBAction func submitButtonTapped(_ sender: UIButton) {

        doneMsg.text = "Done!"
    }
}
