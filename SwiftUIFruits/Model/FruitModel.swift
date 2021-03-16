//
//  FruitModel.swift
//  SwiftUIFruits
//
//  Created by Blake Kvarfordt on 3/15/21.
//

import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var description: String
    var colors: [Color]
    var nutrition: [String]
}
