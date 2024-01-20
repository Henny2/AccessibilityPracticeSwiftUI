//
//  VoiceControlView.swift
//  AccessibilityPractice
//
//  Created by Henrieke Baunack on 1/19/24.
//

import SwiftUI

struct VoiceControlView: View {
    
    @State private var red:Bool = true
    var body: some View {
        VStack{
            Text(red ? "Red" : "Black")
            Button("Color change") {
                print("Button tapped")
                red.toggle()
            }
            .accessibilityInputLabels(["Red", "Color change", "Test"])
            Text("Some text").foregroundStyle(red ? .red : .black)
        }
        // this will make the buttons un-selectable
        // .accessibilityElement() // grouping
    }
}

#Preview {
    VoiceControlView()
}
