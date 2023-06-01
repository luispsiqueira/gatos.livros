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
            StoreView()
                .tabItem {
                     Image(systemName: "bag.fill")
                        Text("Book Store")
            ReadingNowView()
                .tabItem {
                    Image(systemName:  "book.fill")
                    Text("Readind Now")
                }
            BibliotecaView(mockBooks)
                .tabItem {
                    Image(systemName: "books.vertical.fill")
                    Text("Library")
                }
            StoreView()
                .tabItem {
                    Image(systemName: "bag.fill")
                    Text("Book Store")
                }
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
