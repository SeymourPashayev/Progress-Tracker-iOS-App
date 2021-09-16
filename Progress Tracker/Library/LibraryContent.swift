//
//  LibraryContent.swift
//  Progress Tracker
//
//  Created by Seymour Pashayev on 9/6/21.
//
//  Used to store Library Content

import SwiftUI



struct LibraryContent: LibraryContentProvider{
    @LibraryContentBuilder
    var views: [LibraryItem] {
        LibraryItem(
                CloseButton(),
                title: "Close Button",
                category: .control
        )
    }
    
    @LibraryContentBuilder
    func modifiers(base: Image) -> [LibraryItem] {
        LibraryItem(
            base.cardStyle(color: Color.blue, cornerRadius: 22),
            title: "Card Style",
            category: .effect
        )
    }
}

// To add modifier code (.style at the end of the {})

/** Special iOS Shape + Shadow for cards*/
extension View {
    func cardStyle(color: Color, cornerRadius: CGFloat) -> some View {
        return self
            .background(color)
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius, style: .continuous))
            .shadow(color: color.opacity(0.3), radius: 20, x: 0, y: 10)
    }
}
