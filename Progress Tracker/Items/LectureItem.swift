//
//  LectureItem.swift
//  Progress Tracker
//
//  Created by Seymour Pashayev on 9/6/21.
//

import SwiftUI

struct LectureItem: View {
    
    var lecture: Lecture = lectures[0]
    var cornerRadius: CGFloat = 22
    
    
    var body: some View {
        
        HStack {
            VStack(alignment: .leading, spacing: 8.0) {
                
                HStack{
                    VStack(alignment: .leading){
                        Text(lecture.name)
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Text(lecture.author)
                            .font(.subheadline)
                            .foregroundColor(.white.opacity(0.9))
                    }
                    
                    Spacer()
                    
                    // Number of lectures tracker
                    Text("\(lecture.currentLecture)/\(lecture.numberOfLectures)")
                        .font(.subheadline)
                        .padding(8)
                        .foregroundColor(.white)
                        .cardStyle(color: Color.blue, cornerRadius: 16)
                        .shadow(radius: -10)
                    
                    
                }
                
                Spacer()
                
                ProgressView(value: (Double)(lecture.currentLecture)/Double((lecture.numberOfLectures)))
                    .padding(/*@START_MENU_TOKEN@*/.all, 4.0/*@END_MENU_TOKEN@*/)
                    .background(Color.white)
                    .accentColor(.black.opacity(0.6))
                    .cardStyle(color: /*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, cornerRadius: 20)
                    .padding(.top, 6)
                
            }
            
            
            
            Spacer()
        }
        .padding(.all)
        .cardStyle(color: Color.blue.opacity(0.8), cornerRadius: cornerRadius)
    }
}

struct LectureItem_Previews: PreviewProvider {
    static var previews: some View {
        LectureItem()
    }
}
