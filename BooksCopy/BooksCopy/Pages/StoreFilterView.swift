//
//  StoreFilterView.swift
//  BooksCopy
//
//  Created by Samuel da Fonseca Martins on 24/05/23.
//

import SwiftUI

struct StoreFilterView: View {
    var body: some View {
        NavigationLink {
            StoreFilterView()
        } label:{
            Text("\(Image(systemName: "text.justify.left"))").font(.title3).foregroundColor(.gray)
            Text("Explore")
            Spacer()
            Text("\(Image(systemName: "chevron.forward"))").foregroundColor(.gray)
        }.padding(.horizontal)
    }
    
}

struct StoreFilterView_Previews: PreviewProvider {
    static var previews: some View {
        StoreFilterView()
    }
}
