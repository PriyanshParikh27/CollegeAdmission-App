//
//  SummaryScreen.swift
//  CollegeAdmissionApp
//
//  Created by Priyansh on 04/02/24.
//

import UIKit

class SummaryScreen: UIViewController {

    @IBOutlet weak var summary: UILabel!

    // Variables to receive data from Form 1 and Form 2
    var fullName: String?
    var dateOfBirth: Date?
    var genderIndex: Int?
    var gpa: String?
    var preferredProgram: String?
    var extracurricularActivities: [String]?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Display the summary data
        let genderText: String
        if let genderIdx = genderIndex {
            genderText = (genderIdx == 0) ? "Male" : "Female"
        } else {
            genderText = ""
        }

        let extracurricularText: String
        if let activities = extracurricularActivities, !activities.isEmpty {
            extracurricularText = activities.joined(separator: ", ")
        } else {
            extracurricularText = "None"
        }

        let summaryText = """
        Full Name: \(fullName ?? "")
        Date of Birth: \(dateOfBirth?.description ?? "")
        Gender: \(genderText)
        GPA: \(gpa ?? "")
        Preferred Course: \(preferredProgram ?? "")
        Extracurricular Activities: \(extracurricularText)
        """
        summary.text = summaryText
    }
}
