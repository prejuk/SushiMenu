//
//  ContentView.swift
//  menu
//
//  Created by Preju Kanuparthy on 12/2/23.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems:[MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    var body: some View {
        
        List(menuItems){ item in
            
            
            MenuListRow(item: item)
            
            
        }
        .listStyle(.plain)
        .onAppear(perform: {
            //Call for the data
           menuItems =  dataService.getData()
        })
        
    }
}

#Preview {
    MenuView()
}
