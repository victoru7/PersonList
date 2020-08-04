//
//  PersonRow.swift
//  PersonList
//
//  Created by Виктор Устюжанин on 04.08.2020.
//  Copyright © 2020 Виктор Устюжанин. All rights reserved.
//

import SwiftUI

struct PersonRow: View {
    
    let person: Person
    
    var body: some View {
        HStack {
            Text("\(person.name) \(person.surname)")
            
        }
    }
}

struct PersonRow_Previews: PreviewProvider {
    static var previews: some View {
        PersonRow(person: Person.returnPersons()[0])
    }
}
