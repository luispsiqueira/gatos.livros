//
//  BookComponent.swift
//  BooksCopy
//
//  Created by Caio Melloni dos Santos on 25/05/23.
//

import SwiftUI

struct BookComponent: View {
    private var readingProgress = 0.0
    private var imageName = ""
    private var isNew = true;
    init(_ book: Book) {
        isNew = book.readingProgress == 0.0
        self.readingProgress = book.readingProgress
        imageName = book.imageName
    }
    var body: some View {
        VStack {
            Image(imageName).resizable()
                //.frame(width: 160, height: 250)
                .resizable()
                .scaledToFit()
                .frame(maxHeight: 182)
                .shadow(radius: 10)
            HStack {
                if isNew {
                    NewTag()
                } else {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20).frame(width: 0, height: 25)
                        Text("\(readingProgress, specifier: "%.0f")%").foregroundColor(.gray)
                    }
                }
                //Spacer()
                Text("         ")
                MenuComponent()
                    .padding(.top, -10)
            }.frame(width: 150)
        }
    }
}

struct BookComponent_Previews: PreviewProvider {
    static var previews: some View {
        BookComponent(mockBooks[0]).preferredColorScheme(.dark)
    }
}
