//
//  PhoneNumberEmailViewController.swift
//  PersonsListApp
//
//  Created by Larisa on 21.04.2021.
//

import UIKit

class PhoneNumberEmailViewController: UIViewController {
    
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var phoneNumber: String!
    var email: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        phoneNumberLabel.text = "Phone: \(phoneNumber!)"
        emailLabel.text = "Email: \(email!)"
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
