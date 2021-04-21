//
//  PersonsTableViewController.swift
//  PersonsListApp
//
//  Created by Larisa on 20.04.2021.
//

import UIKit

class PersonsTableViewController: UITableViewController {
    
    let persons = Person.getData()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       persons.count
        
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "namePerson", for: indexPath)
        
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        cell.contentConfiguration = content

        return cell
    }
    
    // MARK: - Table view data delegate

    
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let phoneNumberVC = segue.destination as? PhoneNumberEmailViewController else { return }
        
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = persons[indexPath.row]
        phoneNumberVC.phoneNumber = person.phoneNumber
        phoneNumberVC.email = person.email

    }

}
