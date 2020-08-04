//
//  PersonListMain.swift
//  PersonList
//
//  Created by Виктор Устюжанин on 04.08.2020.
//  Copyright © 2020 Виктор Устюжанин. All rights reserved.
//

import SwiftUI

struct PersonListMain: View {
    
    let persons = Person.returnPersons()
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                NavigationLink(destination: PersonDetail(person: person)){
                    PersonRow(person: person)
                }
            }.navigationBarTitle(Text("Persons List"))
        }
        
    }
}

struct PersonListMain_Previews: PreviewProvider {
    static var previews: some View {
        PersonListMain()
    }
}
