//
//  StoreView.swift
//  BooksCopy
//
//  Created by Samuel da Fonseca Martins on 23/05/23.
//

import SwiftUI


struct StoreView: View {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 36)!]
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size:17)!]
    }
    var body: some View {
        NavigationView {
            
            List{
                Text("Hello World!")}
              .navigationBarTitle(Text("Book Store").font(.subheadline), displayMode: .large)
            Divider()
        }
    }
}

struct StoreView_Previews: PreviewProvider {
    static var previews: some View {
        StoreView()
            
    }
}
