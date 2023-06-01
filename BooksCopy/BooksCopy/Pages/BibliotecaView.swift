//
//  BibliotecaView.swift
//  BooksCopy
//
//  Created by Caio Melloni dos Santos on 23/05/23.
//

import SwiftUI


struct BibliotecaView: View {
    var bookData:[Book] = []

    init(_ bookData:[Book]) {
        self.bookData = bookData
        UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 36)!]
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size:17)!]
    }
    
    @State private var selection = "Manually"
    let colors = ["Recent", "Title", "Author", "Manually"]
    @State private var isGrid = true
    @Environment(\.colorScheme) var colorScheme
    private var isDark: Bool {
        colorScheme == .dark
    }
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Divider()
                    NavigationLink {
                        CollectionsView()
                    } label: {
                        
                        Text("\(Image(systemName: "text.justify.left"))").foregroundColor(.gray)
                        Text("Collections")
                        Spacer()
                        Text("\(Image(systemName: "chevron.forward"))").foregroundColor(.gray)
                    }
                    Divider()
                    HStack{
                        Text("\(bookData.count) books").foregroundColor(.gray).font(.system(size: 16))
                        Spacer()
                    }
                    Divider()
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
                            RoundedRectangle(cornerRadius: 2).frame(width: 25, height: 25).opacity(isGrid ? 0 : (isDark ? 0.3 : 1)).foregroundColor(isDark ? .gray : .black)
                            Image(systemName: "list.bullet").onTapGesture {
                                isGrid.toggle()
                            }.foregroundColor(isDark ? .accentColor : (isGrid ? .accentColor : .white))
                        }
                        
                    }.padding(.bottom, 20)
                    VStack {
                        BookGallery(mockBooks, isGrid: isGrid)
                    }
                }     .padding(.horizontal,32)
                
            }
            .navigationTitle("Library")
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
        BibliotecaView(mockBooks)
        
    }
}
