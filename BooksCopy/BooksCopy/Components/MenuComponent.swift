//
//  MenuComponent.swift
//  BooksCopy
//
//  Created by Luis Silva on 25/05/23.
//

import SwiftUI

struct MenuComponent: View {
    var body: some View {
        Menu("...") {
            Group{
                Button(action: {}){
                    Label("Share Book", systemImage: "square.and.arrow.up")
                }
                Divider()
                Button(action: {}){
                    Label("Add to Want to Read", systemImage: "text.badge.star")
                }
                Button(action: {}){
                    Label("Add to Collection", systemImage: "text.badge.plus")
                }
                Button(action: {}){
                    Label("Mark as Finished", systemImage: "checkmark.circle")
                }
                Button(action: {}){
                    Label("View In Store", systemImage: "bag")
                }
                Button(action: {}){
                    Label("Rate and Review", systemImage: "star.leadinghalf.fill")
                }
                Divider()
                Button(action: {}){
                    Label("Suggest More Like This", systemImage: "hand.thumbsup")
                }
                Button(action: {}){
                    Label("Suggest Less Like This", systemImage: "hand.thumbsdown")
                }
            }
            Divider()
            Button(role: .destructive,action: {}){
                Label("Remove...", systemImage: "trash")
            }
        }
        .padding(.leading,-78)
        .font(.system(size:28))
        .accentColor(.gray)
    }
}

struct MenuComponent_Previews: PreviewProvider {
    static var previews: some View {
        MenuComponent()
    }
}
