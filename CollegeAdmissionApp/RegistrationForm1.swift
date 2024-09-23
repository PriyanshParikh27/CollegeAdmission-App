//
//  RegistrationForm1.swift
//  CollegeAdmissionApp
//
//  Created by Priyansh on 04/02/24.
//

import UIKit

class RegistrationForm1: UIViewController {

    @IBOutlet weak var fullName: UITextField!
    @IBOutlet weak var birthDate: UIDatePicker!
    @IBOutlet weak var gender: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToRegistrationForm2" {
            if let registrationForm2VC = segue.destination as? RegistrationForm2 {
                // Pass data to RegistrationForm2
                registrationForm2VC.fullNameFromForm1 = fullName.text
                registrationForm2VC.birthDateFromForm1 = birthDate.date
                registrationForm2VC.genderIndexFromForm1 = gender.selectedSegmentIndex
            }
        }
    }
}

