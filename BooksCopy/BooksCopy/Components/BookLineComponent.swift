//
//  BookLineComponent.swift
//  BooksCopy
//
//  Created by Caio Melloni dos Santos on 26/05/23.
//

import SwiftUI

struct BookLineComponent: View {
    let book:Book
    init(_ book: Book) {
        self.book = book
    }
    var body: some View {
        VStack {
            HStack {
             Image(book.imageName).resizable().frame(width: 70, height: 110)
                Spacer()
                VStack(alignment:.leading) {
                    Text(book.title).foregroundColor(.accentColor).fontWeight(.medium)
                    Text(book.author).foregroundColor(.gray).font(.system(size: 12)).padding(.bottom, 5)
                    HStack {
                        Text("\(book.readingProgress, specifier: "%.0f")%").foregroundColor(.gray)
                        Spacer()
                        Text("...").foregroundColor(.gray)
                    }
                }
            }
        }
    }
}

struct BookLineComponent_Previews: PreviewProvider {
    static var previews: some View {
        BookLineComponent(mockBooks[0])
    }
}
