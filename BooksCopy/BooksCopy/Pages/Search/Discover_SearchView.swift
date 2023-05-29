//
//  Discover_SearchView.swift
//  BooksCopy
//
//  Created by Caio Lopes on 23/05/23.
//

import SwiftUI

struct Discover_SearchView: View {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 36)!]
        
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size:17)!]
        
    }
    @State var searchField: String = ""
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: true){
                VStack{
                    SearchListView()
                    SearchTendenciesView()
                }//.VStack
            }//.ScrollView
            .searchable(text: $searchField, placement: .navigationBarDrawer(displayMode: .always))
            .navigationBarTitle(Text("Search").font(.subheadline), displayMode: .large)
        }//.NavigationView
    }//.body
    
}

struct Discover_SearchView_Previews: PreviewProvider {
    static var previews: some View {
        Discover_SearchView()
    }
}


