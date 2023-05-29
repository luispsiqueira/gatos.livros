//
//  BookGallery.swift
//  BooksCopy
//
//  Created by Caio Melloni dos Santos on 25/05/23.
//

import SwiftUI

struct Book: Hashable {
    let title: String
    let author: String
    let readingProgress: Double
    let imageName: String
}

let mockBooks = [Book(title: "The search of lorem", author: "Ana Lorem", readingProgress: 0.0, imageName:"capa_livro"), Book(title: "One hot Lorem", author: "Kevin Ipsum", readingProgress: 5, imageName:"capa_livro"), Book(title: "Dorus Lord", author: "Ash De Bruyne", readingProgress: 76, imageName:"capa_livro")]

struct BookGallery: View {
    
    var data : [Book] = []
    var isGrid: Bool = true
    init(_ books: [Book], isGrid: Bool) {
        data = books
        self.isGrid = isGrid
    }
    
    let columns = [
        GridItem(.flexible(minimum: 100 )),
        GridItem(.flexible(minimum: 100))
    ]
    
    var body: some View {
        if isGrid {
            LazyVGrid(columns: columns, spacing: 10) {
                if data.count != 0 {
                    ForEach(0..<data.count, id: \.self) { item in
                        
                        if item % 2 == 0 {
                            BookComponent(data[item]).padding(.trailing, 30)
                        } else {
                            BookComponent(data[item])
                                .padding(.leading, 30)
                        }
                    }
                }
            }
            .padding(.horizontal)
        } else {
            ForEach(0..<data.count, id: \.self) { item in
                BookLineComponent(data[item])
            }
        }
        
    }
    
}

struct BookGallery_Previews: PreviewProvider {
    static var previews: some View {
        BookGallery(mockBooks, isGrid: false)
    }
}
