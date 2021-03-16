//
//  SwiftUIFruitsApp.swift
//  SwiftUIFruits
//
//  Created by Blake Kvarfordt on 3/11/21.
//

import SwiftUI

@main
struct SwiftUIFruitsApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
