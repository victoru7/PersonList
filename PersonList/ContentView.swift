//
//  ContentView.swift
//  PersonList
//
//  Created by Виктор Устюжанин on 04.08.2020.
//  Copyright © 2020 Виктор Устюжанин. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let persons = Person.returnPersons()
    
    var body: some View {
        TabView {
            PersonListMain()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Contacts")
                }
            PersonListAdv()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Contacts")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
