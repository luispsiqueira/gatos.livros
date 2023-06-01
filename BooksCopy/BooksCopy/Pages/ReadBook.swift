//
//  Read.swift
//  BooksCopy
//
//  Created by Caio Melloni dos Santos on 31/05/23.
//

import SwiftUI
struct ReadBook: View {
    
    @State var mode: Bool = true
    
    var body: some View {
            TabView {
                BookPage {
                    BookPage1View(mode:$mode)
                }
                BookPage {
                    BookPage2View(mode: $mode)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .ignoresSafeArea()
        .navigationBarBackButtonHidden()
        .toolbar(.hidden, for: .tabBar)
        .environment(\.colorScheme, mode ? .dark: .light)
        //.preferredColorScheme(.light)
    }
}

struct Read_Previews: PreviewProvider {
    static var previews: some View {
        ReadBook()
    }
}
