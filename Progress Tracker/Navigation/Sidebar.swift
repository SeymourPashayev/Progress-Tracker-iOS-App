//
//  Sidebar.swift
//  Progress Tracker
//
//  Created by Seymour Pashayev on 9/6/21.
//

import SwiftUI

struct Sidebar: View {
    var body: some View {
        NavigationView {
            List {
                // Link to Lectures
                NavigationLink(destination: LecturesView()){
                    Label("Lectures", systemImage: "play.tv")
                }
                
                // Link to Books (To be added)
                
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("Learn")
            
            LecturesView()
        }
    }
}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar()
    }
}
