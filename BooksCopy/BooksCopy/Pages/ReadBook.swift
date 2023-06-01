//
//  Read.swift
//  BooksCopy
//
//  Created by Caio Melloni dos Santos on 31/05/23.
//

import SwiftUI
struct ReadBook: View {
    
    var body: some View {
        TabView {
            BookPage {
                Text("😎")
            }
            BookPage {
                Text("🥰")
            }
            BookPage {
                Text("A")
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .ignoresSafeArea()
        .navigationBarBackButtonHidden()
    }
}

struct Read_Previews: PreviewProvider {
    static var previews: some View {
        ReadBook()
    }
}
