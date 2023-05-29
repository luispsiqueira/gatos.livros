//
//  SwiftUIView.swift
//  BooksCopy
//
//  Created by Caio Lopes on 23/05/23.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        NavigationView{
            ListView()
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}


struct ListView: View{
    var body: some View{
        List{
            Text("Sim")
            Text("Não")
            Text("Talvez")
        }
        .navigationTitle("Descubra")
    }
}
