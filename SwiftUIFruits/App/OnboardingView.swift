//
//  OnboardingView.swift
//  SwiftUIFruits
//
//  Created by Blake Kvarfordt on 3/15/21.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView {
            ForEach(1..<5) { item in
                FruitCardView()
            }
        } // TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
