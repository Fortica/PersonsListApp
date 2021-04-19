//
//  PersonName.swift
//  PersonsListApp
//
//  Created by Larisa on 20.04.2021.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
}


class DataManager {
    let names: [String]
    let surnames: [String]
    let phoneNumbers: [String]
    let emails: [String]
    
    init(names: [String], surnames: [String], phoneNumbers: [String], emails: [String]) {
        self.names = names
        self.surnames = surnames
        self.phoneNumbers = phoneNumbers
        self.emails = emails
    }
    
    static func getDada() -> [DataManager] {
        [
            DataManager(names: ["Alison", "Bob", "Caren", "Daniel", "Fiona", "George", "Harry", "Kim", "Lionel", "Piter"], surnames: ["Brown", "Black", "Green", "Grey", "Smith", "Parker", "Potter", "Dousen", "Pitt", "Depp"], phoneNumbers: ["01234", "12345", "23456", "34567", "45678", "56789", "67890", "78901", "89012", "90123"], emails: ["@person0", "@person1", "@person2", "@person3", "@person4", "@person5", "@person6", "@person7", "@person8", "@person9"])
        ]
    }
}
