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
                HStack(spacing:15){
                    Carrousel1(title: "Título", microtitle: "MICROTÍTULO", subtitle: "Subtítulo", color: .cyan)
                    Carrousel1(title: "Título", microtitle: "MICROTÍTULO", subtitle: "Subtítulo", color: .mint)
                    Carrousel1(title: "Título", microtitle: "MICROTÍTULO", subtitle: "Subtítulo", color: .purple).padding(.trailing)
                    }.padding(.bottom,32)
                
            }
            
        }
    }
}
struct Carrousel_Previews: PreviewProvider {
    static var previews: some View {
        Carrousel()
    }
}
