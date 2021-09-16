//
//  LectureDetail.swift
//  Progress Tracker
//
//  Expanded Lecture Card
//
//  Created by Seymour Pashayev on 9/8/21.
//

import SwiftUI

struct LectureDetail: View {
    
    // Variable to scroll through lectures
    var lecture: Lecture = lectures[0]
    
    // Namespace for card animation
    var cardNamespace: Namespace.ID
    var cornerRadius: CGFloat = 22
    
    var body: some View {
        VStack{
            ScrollView {
                Spacer()
                LectureItem(lecture: lecture, cornerRadius: 22)
                    .matchedGeometryEffect(id: lecture.id, in: cardNamespace)
                    .frame(height: 220)
            }
        }
    }
}

struct LectureDetail_Previews: PreviewProvider {
    @Namespace static var namespace
    static var previews: some View {
        LectureDetail(cardNamespace: namespace)
    }
}
