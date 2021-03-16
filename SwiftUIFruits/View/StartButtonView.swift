//
//  StartButtonView.swift
//  SwiftUIFruits
//
//  Created by Blake Kvarfordt on 3/15/21.
//

import SwiftUI

struct StartButtonView: View {
    var body: some View {
        Button(action: {
            print("Exit the onboarding")
        }, label: {
            HStack {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                
            } // HStack
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(lineWidth: 1.25)
            )
            
        }) // Button
        .accentColor(Color.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StartButtonView()
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
                .environment(\.sizeCategory, .accessibilityMedium)
                .previewDevice("iPhone 12 Pro Max")
            
            StartButtonView()
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.light)
                .environment(\.sizeCategory, .accessibilityMedium)
                .previewDevice("iPhone SE (2nd generation)")
            
            
        }
        
    }
}
