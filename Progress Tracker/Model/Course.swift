//
//  Course.swift
//  Progress Tracker
//
//  Created by Seymour Pashayev on 9/6/21.
//

import SwiftUI

struct Lecture: Identifiable { // has to be Identifiable to have IDs
    private (set) var id = UUID()
    var name: String
    var author: String
    var numberOfLectures: Int
    var currentLecture: Int
}

var lectures: [Lecture] = [
    Lecture(name: "Human Behavioral Biology", author: "Robert Sapolsky", numberOfLectures: 36, currentLecture: 3),
    Lecture(name: "Biblical Series", author: "Jordan B. Peterson", numberOfLectures: 2, currentLecture: 7)
]


