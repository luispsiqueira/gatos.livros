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
                HStack(spacing:8){
                    Carrousel1(title: "Secretamente sua", microtitle: "ROMANCE CONTEMPORÂNEO", subtitle: "Tessa Bailey", color: .cyan)
                    Carrousel1(title: "Título", microtitle: "MICROTÍTULO", subtitle: "Subtítulo", color: .mint)
                    Carrousel1(title: "Título", microtitle: "MICROTÍTULO", subtitle: "Subtítulo", color: .purple).padding(.trailing)
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
