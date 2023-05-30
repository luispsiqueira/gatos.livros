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
                            HStack(alignment: .bottom){
                                RoundedRectangle(cornerRadius: 14)
                                    .fill(.orange.gradient)
                                    .frame(width: 60,height: 140)
                                RoundedRectangle(cornerRadius: 14)
                                    .fill(.orange.gradient)
                                    .frame(width: 80,height: 100)
                                RoundedRectangle(cornerRadius: 14)
                                    .fill(.orange.gradient)
                                    .frame(width: 60,height: 100)
                                RoundedRectangle(cornerRadius: 14)
                                    .fill(.orange.gradient)
                                    .frame(width: 60,height: 100)
                                RoundedRectangle(cornerRadius: 14)
                                    .fill(.orange.gradient)
                                    .frame(width: 60,height: 100)
                                RoundedRectangle(cornerRadius: 14)
                                    .fill(.orange.gradient)
                                    .frame(width: 60,height: 100)
                                RoundedRectangle(cornerRadius: 14)
                                    .fill(.orange.gradient)
                                    .frame(width: 60,height: 100)
                            }.padding(.leading)
                            HStack(alignment: .bottom){
                                RoundedRectangle(cornerRadius: 14)
                                    .fill(.orange.gradient)
                                    .frame(width: 60,height: 120)
                                RoundedRectangle(cornerRadius: 14)
                                    .fill(.orange.gradient)
                                    .frame(width: 60,height: 100)
                                RoundedRectangle(cornerRadius: 14)
                                    .fill(.orange.gradient)
                                    .frame(width: 60,height: 100)
                                RoundedRectangle(cornerRadius: 14)
                                    .fill(.orange.gradient)
                                    .frame(width: 60,height: 100)
                                RoundedRectangle(cornerRadius: 14)
                                    .fill(.orange.gradient)
                                    .frame(width: 60,height: 100)
                                RoundedRectangle(cornerRadius: 14)
                                    .fill(.orange.gradient)
                                    .frame(width: 60,height: 100)
                                RoundedRectangle(cornerRadius: 14)
                                    .fill(.orange.gradient)
                                    .frame(width: 60,height: 100)
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
