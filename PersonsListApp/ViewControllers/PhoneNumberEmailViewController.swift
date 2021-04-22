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
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()

        phoneNumberLabel.text = "Phone: \(person.phoneNumber)"
        emailLabel.text = "Email: \(person.email)"
        
        title = person.fullName
        
    }

}
