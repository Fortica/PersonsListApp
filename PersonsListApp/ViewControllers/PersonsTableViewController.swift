//
//  PersonsTableViewController.swift
//  PersonsListApp
//
//  Created by Larisa on 20.04.2021.
//

import UIKit

class PersonsTableViewController: UITableViewController {
    
    var persons: [Person] = []


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
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let phoneNumberVC = segue.destination as! PhoneNumberEmailViewController
            phoneNumberVC.person = persons[indexPath.row]
        }
    }

}
