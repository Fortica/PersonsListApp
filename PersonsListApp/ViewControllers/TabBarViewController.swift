//
//  TabBarViewController.swift
//  PersonsListApp
//
//  Created by Larisa on 21.04.2021.
//

import UIKit

class TabBarViewController: UITabBarController {

    var persons = Person.getData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewControllers(with: persons)
        
    }
    
    private func setupViewControllers(with person: [Person]) {
        let personVC = viewControllers?.first as! PersonsTableViewController
        let generaleVC = viewControllers?.last as! GeneraleInfoTableViewController
        
        personVC.persons = persons
        generaleVC.persons = persons
    }

}
