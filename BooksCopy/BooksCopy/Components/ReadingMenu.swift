//
//  ReadingMenu.swift
//  BooksCopy
//
//  Created by Samuel da Fonseca Martins on 30/05/23.
//

import SwiftUI


struct ReadingMenu: View {
    var body: some View {
       
        Menu {
            Button(action: {}){
                Label("Share", systemImage:  "square.and.arrow.up")
                
            }
            Button(action: {}){
                Label("Lock Rotation", systemImage:  "lock.rotation")
            }
            Button(action: {}){
                Label("Bookmark", systemImage:  "bookmark")
            }
            Button(action: {}){
                Label("Temas e Ajustes", systemImage:  "textformat.size")
            }
            Button(action: {}) {
                Label( "Buscar no Livro", systemImage: "magnifyingglass")}
            Button(action: {}) {
                Label("Conteúdo - 0%", systemImage: "list.bullet")
            }
            Divider()
            
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 30,height: 30)
                    .foregroundColor(.gray)
                Image(systemName: "list.bullet")
            }
        
        }
    }
    
}

struct ReadingMenu_Previews: PreviewProvider {
    static var previews: some View {
        ReadingMenu()
    }
}
