//
//  ModalBookView.swift
//  BooksCopy
//
//  Created by Caio Lopes on 26/05/23.
//

import SwiftUI

struct ModalBookView: View {
    var body: some View {
        
            
            VStack{
                Image("o-alienista")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 280)
                
                Text("O Alienista")
                
                HStack{
                    Text("Justin Cronin")
                    Image(systemName: "chevron.right")
                }
                
                HStack{
                    Spacer()
                    Image(systemName: "app.gift.fill")
                    Image(systemName: "ellipsis.circle.fill")
                }
                
                Button(action: {}) {
                    Text("COMPRAR | R$ 39,90")
                        .padding(.horizontal, 70) //Change to final value
                }.buttonStyle(.bordered)
                    .controlSize(.large)                .foregroundColor(.primary)
                    .cornerRadius(30)
                
                HStack{
                    Button(action: {}) {
                        HStack{
                            Image(systemName: "plus.circle.fill")
                            Text("QUERO LER")
                        }
                        .padding(.horizontal)
                        
                        
                    }.buttonStyle(.bordered)
                        .controlSize(.large)                .foregroundColor(.primary)
                        .cornerRadius(30)
                    
                    Button(action: {}) {
                        HStack{
                            Image(systemName: "magazine.fill")
                            Text("AMOSTRA")
                        }.padding(.horizontal)
                        
                    }.buttonStyle(.bordered)
                        .controlSize(.large)                .foregroundColor(.primary)
                        .cornerRadius(30)
                }
            }.padding()
            
        
    }
}

struct ModalBookView_Previews: PreviewProvider {
    static var previews: some View {
        ModalBookView()
    }
}
