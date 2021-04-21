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
    
    static func getData() -> [Person] {
        var person = [Person]()
        for _ in 1...10 {
        let employee =
        [
            Person(
                name: DataManager.init().names,
                surname: DataManager.init().surnames,
                phoneNumber: DataManager.init().phoneNumbers,
                email: DataManager.init().emails
            )
        ]
                person.append(contentsOf: employee)
    }
        return person
}
}

class DataManager {
    
    var names = ["Alison", "Bob", "Caren", "Daniel", "Fiona", "George", "Harry", "Kim", "Lionel", "Piter"].randomElement() ?? ""
    var surnames = ["Brown", "Black", "Green", "Grey", "Smith", "Parker", "Potter", "Dousen", "Pitt", "Depp"].randomElement() ?? ""
    var phoneNumbers = ["01234", "12345", "23456", "34567", "45678", "56789", "67890", "78901", "89012", "90123"].randomElement() ?? ""
    var emails = ["@person0", "@person1", "@person2", "@person3", "@person4", "@person5", "@person6", "@person7", "@person8", "@person9"].randomElement() ?? ""
}
