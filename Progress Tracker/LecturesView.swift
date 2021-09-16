//
//  LecturesView.swift
//  Progress Tracker
//
//  Created by Seymour Pashayev on 9/6/21.
//

import SwiftUI

struct LecturesView: View {
    
    // Namespace for card animations
    @Namespace var cardNamespace
    
    // Holds wether the selected card is shown or not
    @State var showingCard = false;
    
    var body: some View{
        VStack {
            cardsView
        }.navigationTitle("Lectures")
        
    }
    
    
    // View of all cards
    var cardsView: some View {
        ScrollView {
            LazyVGrid(columns:[GridItem(.adaptive(minimum: .infinity))],
            spacing: 16
            ){
                ForEach(lectures) {item in
                    VStack{
                        LectureItem(lecture: item)
                            // MGE with isSourse is changing dependent on card state
                            .matchedGeometryEffect(id: item.id, in: cardNamespace, isSource: !showingCard)
                    }
                }
            }
            .padding(16)
        }
    }
    
}

struct LecturesView_Previews: PreviewProvider {
    static var previews: some View {
        LecturesView()
    }
}
