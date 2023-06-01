//
//  ReadingMenu.swift
//  BooksCopy
//
//  Created by Samuel da Fonseca Martins on 30/05/23.
//

import SwiftUI


struct ReadingMenu: View {
    @Environment(\.colorScheme) private var colorScheme
    var body: some View {
        VStack(spacing: 5.0){
            Button(action: {}){
                ZStack{
                    RoundedRectangle(cornerRadius: 15).frame(width:250,height: 45).foregroundColor(ButtonColor)
                    HStack{
                        Text("Contents - 0%")
                            .font(.body)
                            .padding(.trailing,70)
                        Image(systemName: "list.bullet").bold()
                    }
                }
                
            }
            Button(action: {}){
                ZStack{
                    RoundedRectangle(cornerRadius: 15).frame(width:250,height: 45).foregroundColor(ButtonColor)
                    HStack{
                        Text("Search Book")
                            .font(.body)
                            .padding(.trailing,85)
                        Image(systemName: "magnifyingglass").bold()
                    }
                }
                
            }
            Button(action: {}){
                ZStack{
                    RoundedRectangle(cornerRadius: 15).frame(width:250,height: 45).foregroundColor(ButtonColor)
                    HStack{
                        Text("Themes & Settings")
                            .font(.body)
                            .padding(.trailing,40)
                        Image(systemName: "textformat.size").bold()
                    }
                }
            }
            HStack(spacing: 5.0){
                
                
                Button(action: {}){
                    ZStack{
                        RoundedRectangle(cornerRadius: 15).frame(width:80,height: 45).foregroundColor(ButtonColor)
                        Image(systemName: "square.and.arrow.up").bold()
                    }
                }
                Button(action: {}){
                    ZStack{
                        RoundedRectangle(cornerRadius: 15).frame(width:80,height: 45).foregroundColor(ButtonColor)
                        Image(systemName: "lock.rotation").bold()
                    }
                }
                Button(action: {}){
                    ZStack{
                        RoundedRectangle(cornerRadius: 15).frame(width:80,height: 45).foregroundColor(ButtonColor)
                        Image(systemName: "bookmark").bold()
                    }
                }}
                
            
                //        Menu {
                //            Button(action: {}){
                //                Label("Share", systemImage:  "square.and.arrow.up")
                //
                //            }
                //            Button(action: {}){
                //                Label("Lock Rotation", systemImage:  "lock.rotation")
                //            }
                //            Button(action: {}){
                //                Label("Bookmark", systemImage:  "bookmark")
                //            }
                //            Button(action: {}){
                //                Label("Temas e Ajustes", systemImage:  "textformat.size")
                //            }
                //            Button(action: {}) {
                //                Label( "Buscar no Livro", systemImage: "magnifyingglass")}
                //            Button(action: {}) {
                //                Label("Conteúdo - 0%", systemImage: "list.bullet")
                //            }
                //            Divider()
                //
                //        } label: {
                //            ZStack{
                //                RoundedRectangle(cornerRadius: 8)
                //                    .frame(width: 30,height: 30)
                //                    .foregroundColor(.gray)
                //                Image(systemName: "list.bullet")
                //            }
                //
                //        }
            }
            
        }
    private var ButtonColor: Color{
            switch colorScheme{
            case .light:
                return Color(red: 0.91, green: 0.91, blue: 0.91)
            case .dark:
                return Color(red: 0.227, green: 0.227, blue: 0.236)
            @unknown default:
                return /*@START_MENU_TOKEN@*/Color(red: 0.579, green: 0.152, blue: 0.152)/*@END_MENU_TOKEN@*/
            }
            
        }

    }

struct ReadingMenu_Previews: PreviewProvider {
    static var previews: some View {
        ReadingMenu()
    }
}

