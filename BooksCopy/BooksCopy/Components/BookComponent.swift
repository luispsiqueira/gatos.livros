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
    private var x:CGFloat = 0;
    init(_ book: Book, _ xx: Int) {
        isNew = book.readingProgress == 0.0
        self.readingProgress = book.readingProgress
        imageName = book.imageName
        x = CGFloat(xx)
    }
    var body: some View {
        VStack {
            Image(imageName).resizable()
                //.frame(width: 160, height: 250)
                .resizable()
                .scaledToFit()
                .frame(maxHeight: x)
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
        BookComponent(mockBooks[0], 250).preferredColorScheme(.dark)
    }
}
