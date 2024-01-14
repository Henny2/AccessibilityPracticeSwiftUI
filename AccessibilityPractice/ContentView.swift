//
//  ContentView.swift
//  AccessibilityPractice
//
//  Created by Henrieke Baunack on 1/14/24.
//

import SwiftUI

struct ContentView: View {
    
    let pictures = [
        "ales-krivec-15949",
        "galina-n-189483",
        "kevin-horstmann-141705",
        "nicolas-tissot-335096"
    ]
    
    let labels = [
        "Tulips",
        "Frozen tree buds",
        "Sunflowers",
        "Fireworks"
    ]
    
    @State private var selectedPicture = Int.random(in: 0...3)
    var body: some View {
//        VStack{
//            // image decorative tells swiftui that it is not needed to be read out, but it will still be if the user actively selects it or it's a button for example
//            Image(decorative: "ales-krivec-15949")
//            // if you hide a view, it will be completely ignored and never read out
//                .accessibilityHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
//            Image(pictures[selectedPicture])
//                .resizable()
//                .scaledToFit()
//                .onTapGesture {
//                    selectedPicture = Int.random(in: 0...3)
//                }
//                .accessibilityLabel(labels[selectedPicture])
//                .accessibilityAddTraits(.isButton) // make user aware that the picture acts like a button, to avoid this it is better to just use the Button View and add the image via a label
//                .accessibilityRemoveTraits(.isImage) // does not help so can remove this
            HStack{
                Text("Your score is")
                Text("1000")
            }
            //.accessibilityElement(children: .ignore) // this will make them selectable as one thing, vs two different views, aka groups them together
            
            .accessibilityElement(children: .combine) //this reads them together but it has a short pause between them
            //.accessibilityLabel("your score is 1000") // with this, no matter which view you select, they both tell you the whole sentence which is good
//        }
    }
}

#Preview {
    ContentView()
}
