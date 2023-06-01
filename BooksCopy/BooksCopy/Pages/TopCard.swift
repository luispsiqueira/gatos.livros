//
//  TopCard.swift
//  BooksCopy
//
//  Created by Samuel da Fonseca Martins on 25/05/23.
//

import SwiftUI

struct TopCard: View {
    var capa: String
    var title:String
    var author: String
    var position:Int
    var color:Color
    
    var body: some View {
        VStack{
            ZStack{
                Rectangle()
                    .fill(.green)
                    .opacity(0)
                    .frame(width: 360, height: 100)
                HStack{
                    Image(capa)
                        .resizable()
                        .scaledToFit()
                        .frame(maxHeight: 130)
                        .padding(.leading, 1)
                        .shadow(radius: 14)
                    Text("\(position)").font(.custom("Georgia", size: 50)).fontWeight(.light)
                    VStack(alignment: .leading){
                        Text(title)
                            .fontWeight(.bold)
                        Text(author).foregroundColor(.gray)
                        
                    }
                    Spacer()
                }
                
            }
        }
    }
}

struct TopCard_Previews: PreviewProvider {
    static var previews: some View {
        TopCard(capa:"Barthes", title: "p", author: "pi", position: 1, color: .pink)
    }
}
