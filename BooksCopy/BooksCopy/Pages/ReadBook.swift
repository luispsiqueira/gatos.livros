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
                    BookPage1View()
                }
                BookPage {
                    BookPage2View()
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .ignoresSafeArea()
        .navigationBarBackButtonHidden()
        .toolbar(.hidden, for: .tabBar)
    }
}

struct Read_Previews: PreviewProvider {
    static var previews: some View {
        ReadBook()
    }
}
