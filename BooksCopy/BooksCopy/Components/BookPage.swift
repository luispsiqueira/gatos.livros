//
//  BookPage.swift
//  BooksCopy
//
//  Created by Caio Melloni dos Santos on 31/05/23.
//

import SwiftUI

struct BookPage<Content: View>: View {
    let content: Content
    
    @Environment(\.colorScheme) var colorScheme
    private var isDark: Bool {
        colorScheme == .dark
    }
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
   
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .fill(isDark ? .black : .white)
            RoundedRectangle(cornerRadius: 0).stroke(isDark ? Color.white : .black, lineWidth: 0.5)
            VStack {
            self.content
            }.padding(.top, 50)
        }.frame(width: UIScreen.main.bounds.width + 5, height: UIScreen.main.bounds.height + 6)
            .offset(CGSize(width: 0, height: -4))
    }
}

struct BookPage_Previews: PreviewProvider {
    static var previews: some View {
        BookPage {
            Text("🤚🏻")
        }
    }
}
