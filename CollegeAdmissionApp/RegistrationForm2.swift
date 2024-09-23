//
//  RegistrationForm2.swift
//  CollegeAdmissionApp
//
//  Created by Priyansh on 04/02/24.
//

import UIKit

class RegistrationForm2: UIViewController {

    @IBOutlet weak var GPAnumber: UITextField!
    @IBOutlet weak var highSchoolgpa: UISlider!
    @IBOutlet weak var courseName: UITextField!
    @IBOutlet weak var extraActivities: UITextField!

    // Variables to receive data from Form 1
    var fullNameFromForm1: String?
    var birthDateFromForm1: Date?
    var genderIndexFromForm1: Int?
    var extracurricularActivities: [String]?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToSummaryScreen" {
            if let summaryScreenVC = segue.destination as? SummaryScreen {
                // Pass data to SummaryScreen
                summaryScreenVC.fullName = fullNameFromForm1
                summaryScreenVC.dateOfBirth = birthDateFromForm1
                summaryScreenVC.genderIndex = genderIndexFromForm1
                summaryScreenVC.gpa = GPAnumber.text
                summaryScreenVC.preferredProgram = courseName.text
                summaryScreenVC.extracurricularActivities = [extraActivities.text ?? ""]
            }
        }
    }
}
