//
//  TopCard.swift
//  BooksCopy
//
//  Created by Samuel da Fonseca Martins on 25/05/23.
//

import SwiftUI

struct TopCard: View {
    
    var title:String
    var position:Int
    var color:Color
    
    var body: some View {
        VStack{
            HStack{
                RoundedRectangle(cornerRadius: 14)
                    .fill(color.gradient)
                    .frame(width: 60,height: 100)
                    .shadow(radius: 5)
                Text("\(position)").font(.custom("Georgia", size: 50)).fontWeight(.light)
                VStack{
                    Text(title)
                        .fontWeight(.bold)
                    Text("Autor").foregroundColor(.gray)
                
                }
                Spacer(minLength: 200)
            }
        }
    }
}

struct TopCard_Previews: PreviewProvider {
    static var previews: some View {
        TopCard(title: "p", position: 1, color: .pink)
    }
}
