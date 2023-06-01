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

let mockBooks = [Book(title: "The search of lorem", author: "Ana Lorem", readingProgress: 0.0, imageName:"capa_livro"),
                 Book(title: "Swift programming language", author: "Kevin Ipsum", readingProgress: 5, imageName:"image 1"),
                 Book(title: "Swift fundamentals", author: "Ash De Bruyne", readingProgress: 76, imageName:"image 2"),
                 Book(title: "Sarah fire", author: "Isabel Deluro", readingProgress: 76, imageName:"image 3"),
                 Book(title: "Prisioners", author: "Juliana Lorem", readingProgress: 76, imageName:"image 4"),
                 Book(title: "Sagarana", author: "Rafael Kingdom", readingProgress: 76, imageName:"image 6"),
                 Book(title: "Dorus Lord", author: "John Eight", readingProgress: 76, imageName:"image 7"),
                 Book(title: "A Teoria de tudo", author: "Steven Hawking", readingProgress: 76, imageName:"image 8")]

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
                            BookComponent(data[item],350).padding(.trailing, 30)
                        } else {
                            BookComponent(data[item],350)
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
