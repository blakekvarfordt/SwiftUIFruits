//
//  SettingsRowView.swift
//  SwiftUIFruits
//
//  Created by Blake Kvarfordt on 3/16/21.
//

import SwiftUI

struct SettingsRowView: View {
    
    var titleText: String
    var detailText: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            
            HStack(alignment: .center, spacing: 10) {
                Text(titleText).foregroundColor(Color.gray)
                Spacer()
                if let content = detailText {
                    Text(content)
                } else if let linkLabel = linkLabel, let destination = linkDestination {
                    Link(linkLabel, destination: URL(string: "https://\(destination)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }  else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(titleText: "Developer".uppercased(), detailText: "Blake Kvarfordt")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
