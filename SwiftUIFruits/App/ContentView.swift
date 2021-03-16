//
//  ContentView.swift
//  SwiftUIFruits
//
//  Created by Blake Kvarfordt on 3/11/21.
//

import SwiftUI

struct ContentView: View {
    
    var fruits: [Fruit] = fruitData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
