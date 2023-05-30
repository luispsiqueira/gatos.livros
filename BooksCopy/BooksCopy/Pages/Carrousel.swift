//
//  Carrousel.swift
//  BooksCopy
//
//  Created by Samuel da Fonseca Martins on 25/05/23.
//

import SwiftUI

struct Carrousel: View {
    var body: some View {
        VStack{
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing:32){
                    ZStack(alignment: .center){
                        Carrousel1(title: "Secretamente sua", microtitle: "ROMANCE CONTEMPORÂNEO", subtitle: "Tessa Bailey", color: .cyan, fundo:"pink")
                        Image("Secretamente")
                            .resizable()
                            .scaledToFit()
                            .frame(maxHeight: 182)
                            .padding(.leading, 1)
                            .padding(.top, 130)
                            .shadow(radius: 15)
                    }
                    ZStack(alignment: .center){
                        Carrousel1(title: "Coração de aço", microtitle: "BOOK OF THE WEEK", subtitle: "Brandon Sanderson", color: .mint, fundo:"rose")
                        Image("steel")
                            .resizable()
                            .scaledToFit()
                            .frame(maxHeight: 182)
                            .padding(.leading, 1)
                            .padding(.top, 130)
                            .shadow(radius: 15)
                    }
                    ZStack(alignment: .center){
                        Carrousel1(title: "Nunca vi a chuva", microtitle: "LOCAL AUTHOR", subtitle: "Stêfano Volp", color: .purple, fundo:"blue").padding(.trailing)
                        Image("chuva")
                            .resizable()
                            .scaledToFit()
                            .frame(maxHeight: 182)
                            .padding(.leading, 1)
                            .padding(.top, 130)
                            .shadow(radius: 15)
                    }
                }.padding([.leading, .bottom, .trailing],16)
                
            }
            
        }
    }
}
struct Carrousel_Previews: PreviewProvider {
    static var previews: some View {
        Carrousel()
    }
}
