//
//  ReadingControlsView.swift
//  AccessibilityPractice
//
//  Created by Henrieke Baunack on 1/14/24.
//

import SwiftUI

struct ReadingControlsView: View {
    @State private var value = 10
    var body: some View {
        VStack{
            Text("Value \(value)")
            Button("Increment") {
                value += 1
            }
            Button("Decrement") {
                value -= 1
            }
        }
        // with these changes, we group it into one selected entity in the screen, the user cannot press the buttons individually anymore
        // they need to use the swiping to make the changes
        // it will tell the user the current value after each swipe
        .accessibilityElement() // grouping
        .accessibilityLabel("Value")
        .accessibilityValue(String(value))
        .accessibilityAdjustableAction { direction in
            switch direction {
            case .increment:
                value += 1
            case .decrement:
                value -= 1
            default:
                print("not handled")
            }
        }
    }
}

#Preview {
    ReadingControlsView()
}
