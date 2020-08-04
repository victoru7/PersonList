//
//  PersonDetail.swift
//  PersonList
//
//  Created by Виктор Устюжанин on 04.08.2020.
//  Copyright © 2020 Виктор Устюжанин. All rights reserved.
//

import SwiftUI

struct PersonDetail: View {
    
    let person: Person
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Text("Phone: \(person.phone)").padding()
                Spacer()
            }
            HStack{
                Text("E-mail: \(person.email)").padding()
                }
            Spacer()
        }
        .navigationBarTitle(Text(person.name), displayMode: .inline)

    }
}

struct PersonDetail_Previews: PreviewProvider {
    static var previews: some View {
        PersonDetail(person: Person.returnPersons()[0])
    }
}

