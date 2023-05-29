//
//  ContentView.swift
//  BooksCopy
//
//  Created by Luis Silva on 23/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Discover_SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
        }
        .accentColor(.primary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
