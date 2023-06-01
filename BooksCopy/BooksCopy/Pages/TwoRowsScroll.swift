//
//  TwoRowsScroll.swift
//  BooksCopy
//
//  Created by Samuel da Fonseca Martins on 25/05/23.
//

import SwiftUI

struct TwoRowsScroll: View {
    let uiscreen = UIScreen.main.bounds
    
    var body: some View {
        HStack{
            ZStack{
//                Rectangle()
//                    .fill(
//                        LinearGradient(gradient: Gradient(colors: [Color.clear, Color.secondary]),
//                                       startPoint: .bottom,
//                                       endPoint: .top))
//                    .frame(width: self.uiscreen.width,
//                           height:420,
//                           alignment: .center)
                VStack(alignment: .leading){
                    VStack(alignment: .leading){
                        Text("Novidades e tendências").font(.custom("Georgia-Bold", size: 25)).bold()
                            .padding(.leading,16)
                        Text("Lançamentos e livros que estão dando o que falar")
                            .font(.body)
                            .padding(.leading,16)
                    }.foregroundColor(.white)
                    ScrollView(.horizontal,showsIndicators: false){
                        VStack(alignment: .leading){
                            HStack(alignment: .bottom, spacing: 8.0){
                                Image("Amar")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxHeight: 130)
                                    .padding(.leading, 1)
                                    .shadow(radius: 3)
                                Image("Machado")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxHeight: 130)
                                    .padding(.leading, 1)
                                    .shadow(radius: 3)
                                Image("Metz")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxHeight: 130)
                                    .padding(.leading, 1)
                                    .shadow(radius: 3)
                                Image("chuva")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxHeight: 130)
                                    .padding(.leading, 1)
                                    .shadow(radius: 3)
                                Image("Mochileiro")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxHeight: 130)
                                    .padding(.leading, 1)
                                    .shadow(radius: 3)
                                Image("steel")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxHeight: 130)
                                    .padding(.leading, 1)
                                    .shadow(radius: 3)
                                Image("veredas")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxHeight: 130)
                                    .padding(.leading, 1)
                                    .shadow(radius: 3)
                            }.padding(.leading)
                            HStack(alignment: .bottom){
                                
                                Image("Secretamente")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxHeight: 130)
                                    .padding(.leading, 1)
                                    .shadow(radius: 3)
                                Image("Barthes")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxHeight: 130)
                                    .padding(.leading, 1)
                                    .shadow(radius: 3)
                                Image("o-alienista")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxHeight: 130)
                                    .padding(.leading, 1)
                                    .shadow(radius: 3)
                                Image("Hamlet")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxHeight: 130)
                                    .padding(.leading, 1)
                                    .shadow(radius: 3)
                                Image("image 2")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxHeight: 130)
                                    .padding(.leading, 1)
                                    .shadow(radius: 3)
                                Image("image 8")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxHeight: 130)
                                    .padding(.leading, 1)
                                    .shadow(radius: 3)
                                Image("O homem mais rico da babilonia")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxHeight: 130)
                                    .padding(.leading, 1)
                                    .shadow(radius: 3)
                            }.padding(.leading)
                        }.padding(.vertical,24)
                    }
                    Divider()
                    HStack{
                        Text("Ver tudo")
                            .frame(alignment: .leading).padding(.leading).foregroundColor(.white)
                        Text("\(Image(systemName: "chevron.forward"))").font(.caption).foregroundColor(.gray).frame(maxWidth: .infinity, alignment: .leading)
                    }
                    
                }
                
            }
        }.padding(.vertical)
    }
}
struct TwoRowsScroll_Previews: PreviewProvider {
    static var previews: some View {
        TwoRowsScroll()
    }
}
