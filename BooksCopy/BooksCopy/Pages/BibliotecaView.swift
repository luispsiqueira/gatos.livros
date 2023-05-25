//
//  BibliotecaView.swift
//  BooksCopy
//
//  Created by Caio Melloni dos Santos on 23/05/23.
//

import SwiftUI


struct BibliotecaView: View {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 36)!]
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size:17)!]
    }
    
    @State private var selection = "Manually"
    let colors = ["Recent", "Title", "Author", "Manually"]
    @State private var isGrid = true
    
    var body: some View {
        
        NavigationView {
            List {
                NavigationLink {
                    CollectionsView()
                } label: {
                    Text("\(Image(systemName: "text.justify.left"))").foregroundColor(.gray)
                    Text("Collections")
                }
                
                
                Text("x books").foregroundColor(.gray).font(.system(size: 16))
                HStack(alignment: .bottom) {
                    Text("SORT BY").foregroundColor(.gray).font(.system(size: 14))
                    Picker("", selection: $selection) {
                        ForEach(colors, id: \.self) {
                            Text($0)
                        }
                    }
                    .labelsHidden().padding(-8)
                    .pickerStyle(.menu)
                    Spacer()
                    
                    ZStack {
                        Image(systemName: "list.bullet").onTapGesture {
                            isGrid.toggle()
                        }
                        RoundedRectangle(cornerRadius: 2).frame(width: 25, height: 25).opacity(isGrid ? 0 : 0.5)
                    }
                    
                }
                BookGallery(mockBooks, isGrid: isGrid)
                
                
            }.listStyle(.plain)
                .navigationBarTitle(Text("Library").font(.subheadline), displayMode: .large)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing ) {
                        Button("Edit") {
                            print("Edit tapped!")
                        }.foregroundColor(.accentColor)
                    }
                }
        }
    }
}

struct BibliotecaView_Previews: PreviewProvider {
    static var previews: some View {
        BibliotecaView().preferredColorScheme(.dark)
        
    }
}
