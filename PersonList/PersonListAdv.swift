//
//  PersonListAdv.swift
//  PersonList
//
//  Created by Виктор Устюжанин on 04.08.2020.
//  Copyright © 2020 Виктор Устюжанин. All rights reserved.
//

import SwiftUI

struct PersonListAdv: View {
    
    let persons = Person.returnPersons()
    
    var body: some View {
        NavigationView {
            List (){
                ForEach(persons) { person in
                    Section(header: Text("\(person.name) \(person.surname)")) {
                        VStack(alignment: .leading){
                            InfoPerson(text: person.phone, picture: "phone")
                            InfoPerson(text: person.email, picture: "tray.fill")
                        }
                    }
                }.navigationBarTitle(Text("Persons List"))
            }
        }
    }
}

struct PersonListAdv_Previews: PreviewProvider {
    static var previews: some View {
        PersonListAdv()
    }
}

struct InfoPerson: View {
    
    let text: String
    let picture: String
    
    var body: some View {
        HStack{
            Image(systemName: picture)
            Text(text)}
    }
}
