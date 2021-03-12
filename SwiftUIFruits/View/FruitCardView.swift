//
//  FruitCardView.swift
//  SwiftUIFruits
//
//  Created by Blake Kvarfordt on 3/11/21.
//

import SwiftUI

struct FruitCardView: View {
    
    // MARK: - Properties
    
    
    
    // MARK: - Boddy
    
    var body: some View {
        VStack(spacing: 20) {
            Image("blueberry")
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
            Text("Blueberry")
        }
    }
}



// MARK: - Body


struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FruitCardView()
                .preferredColorScheme(.light)
                .environment(\.sizeCategory, .accessibilityMedium)
                .previewDevice("iPhone SE (2nd generation)")
            
            FruitCardView()
                .preferredColorScheme(.dark)
                .environment(\.sizeCategory, .accessibilityMedium)
                .previewDevice("iPhone 12 Pro Max")
            
        }
    }
}
