//
//  CollectionsView.swift
//  BooksCopy
//
//  Created by Caio Melloni dos Santos on 24/05/23.
//

import SwiftUI

struct CollectionsView: View {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 36)!]
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size:17)!]

    }
    var body: some View {
        NavigationView {
            List {
               CollectionBtn("arrow.forward.circle.fill", "Want to Read")
                CollectionBtn("checkmark.circle.fill", "Finished")
                CollectionBtn("book.fill", "Books")
                CollectionBtn("headphones", "AudioBooks")
                CollectionBtn("doc.text.fill", "PDFs")
                CollectionBtn("newspaper.fill", "My Samples")
                CollectionBtn("icloud.and.arrow.down.fill", "Downloaded")
                Button {
                    
                } label: {
                    HStack {
                        Image(systemName: "plus")
                        Text("New Collection...")
                    }
                }
            }.listStyle(.plain)
        }
          .navigationTitle("Collections")
          .toolbar {
              ToolbarItem(placement: .navigationBarTrailing ) {
                  Button("Edit") {
                      print("Edit tapped!")
                  }.foregroundColor(.accentColor)
              }
          }
    }
}

struct CollectionsView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionsView()
    }
}

struct CollectionBtn: View {
    var imageName = ""
    var text = ""
    init(_ imageName: String, _ text: String) {
        self.imageName = imageName
        self.text = text
    }
    var body: some View {
        NavigationLink {} label: {
                    Image(systemName: imageName).foregroundColor(.accentColor)
                    Text(text)
                }
    }
}
