//
//  SearchTendenciesView.swift
//  BooksCopy
//
//  Created by Caio Lopes on 24/05/23.
//

import SwiftUI

struct SearchTendenciesView: View {
    @State var searches = ["harry potter","hamlet", "sherlock holmes", "agatha christie", "os meninos da rua Paulo", "dom casmurro", "iracema", "freud", "rita lee", "cabeça fria, coração quente"]
    
    var body: some View {
        VStack{
            HStack{
                Text("Tendencies")
                    .font(.custom("Georgia-bold", size: 22))
                Spacer()
            }
            Divider()
            
            ForEach((0..<searches.count), id: \.self){search in
                VStack(spacing:0){
                    Tendencies(texted: searches[search])
                    Divider()
                }
            }
            
            
        }
        .padding()
    }
}

struct SearchTendenciesView_Previews: PreviewProvider {
    static var previews: some View {
        SearchTendenciesView()

    }
}


struct Tendencies: View {
    @State var texted: String
    
    var body: some View {
        
        HStack(spacing: 19){
            Image(systemName: "magnifyingglass")
            Text(texted)
            Spacer()
        }
        .padding()
        
    }
}
