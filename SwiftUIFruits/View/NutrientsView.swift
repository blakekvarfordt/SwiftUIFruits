//
//  NutrientsView.swift
//  SwiftUIFruits
//
//  Created by Blake Kvarfordt on 3/16/21.
//

import SwiftUI

struct NutrientsView: View {
    
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins","Minerals"]
    
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutitional value per 100g") {                                    ForEach(0..<nutrients.count, id: \.self) { item in
                
                Divider().padding(.vertical, 2)
                
                HStack {
                    Group {
                        Image(systemName: "info.circle")
                        Text(nutrients[item])
                    }
                    .foregroundColor(fruit.colors[1])
                    .font(Font.system(.body).bold())
                    
                    Spacer(minLength: 25)
                    
                    Text(fruit.nutrition[item])
                        .multilineTextAlignment(.trailing)
                }
            }
            }
        }
    }
}

struct NutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        NutrientsView(fruit: fruitData[0])
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
            .preferredColorScheme(.dark)
    }
}
