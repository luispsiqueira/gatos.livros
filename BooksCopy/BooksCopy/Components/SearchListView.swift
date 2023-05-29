//
//  SearchListView.swift
//  BooksCopy
//
//  Created by Caio Lopes on 24/05/23.
//

import SwiftUI

//MARK: Discover List

struct SearchListView: View{
    
    var body: some View{
        
            VStack{
                HStack{
                    Text("Discover")
                        .font(.custom("Georgia-bold", size: 22))
                    Spacer()
                }
                Divider()
                
                //Each time we call this struct, we have to declare the cover assets, title, author and how many stars are full
                BooksView(image: "O homem mais rico da babilonia", title: "O Homem Mais Rico da Babilônia", author: "George S. Clason", review: 5, price: "R$ 24,90")
                    
                Divider()
                    .padding(.leading, 80.0)
                
                BooksView(image: "A biblioteca da meia noite", title: "A Biblioteca da Meia-Noite", author: "Matt Haig", review: 3, price: "R$ 32,90")
                Divider()
                    .padding(.leading, 80.0)
                BooksView(image: "o-alienista", title: "O Alienista", author: "Machado de Assis", review: 4, price: "Obter")

            
            }
            .padding()

        }
}

//MARK: Components of the books list inside the discover list

struct BooksView: View{
    @State var image: String
    @State var title: String
    @State var author: String
    @State var review: Int
    @State var price: String
    
    var body: some View{
        HStack{
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 81)
            
            VStack(alignment: .leading, spacing:5){
                Text(title)
                    .bold()
                    .font(.headline)
                    
                
                Text(author)
                    .font(.callout)
                    
                
                HStack(spacing:0){
                    ForEach((0...review-1), id: \.self){_ in
                        Image(systemName: "star.fill")
                    }
                    
                    if review==5 {}
                    else{
                        ForEach((0...(4 - review)), id: \.self){_ in
                            Image(systemName: "star")
                        }
                    }
                }
                .multilineTextAlignment(.leading)

            }
            Spacer()
            ZStack{
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .frame(width:90, height:30)
                    .foregroundColor(.secondary).opacity(0.5)
                
                Text(price)
                    .font(.headline)
            }
        }

    }
}


struct SearchListView_Previews: PreviewProvider {
    static var previews: some View {
        SearchListView()
    }
}
