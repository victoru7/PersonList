//
//  Person.swift
//  PersonList
//
//  Created by Виктор Устюжанин on 04.08.2020.
//  Copyright © 2020 Виктор Устюжанин. All rights reserved.
//

import Foundation

struct Person: Identifiable {
    
    let id: Int
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    static func returnPersons() -> [Person] {
        
        var persons: [Person] = []
        
        
        for index in 0..<10 {
            
            let strIndex = String(index)
            let person = Person(id: index,name: "name" + strIndex, surname: "surname" + strIndex,
                                email: "email" + strIndex, phone: "phone" + strIndex)
            
            persons.append(person)
        }
        
        return persons
    }
}
