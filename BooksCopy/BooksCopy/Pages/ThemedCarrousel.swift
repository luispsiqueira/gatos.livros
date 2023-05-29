//
//  ThemedCarrousel.swift
//  BooksCopy
//
//  Created by Samuel da Fonseca Martins on 25/05/23.
//

import SwiftUI

struct ThemedCarrousel: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Uma viagem pelo Brasil").font(.custom("Georgia-Bold", size: 20)).bold().frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            RoundedRectangle(cornerRadius: 14).fill(.brown.gradient).frame(width:325.0,height: 160).padding(.leading)
        }
    }
}

struct ThemedCarrousel_Previews: PreviewProvider {
    static var previews: some View {
        ThemedCarrousel()
    }
}
