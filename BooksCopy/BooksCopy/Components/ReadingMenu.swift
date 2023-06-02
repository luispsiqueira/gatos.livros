//
//  ReadingMenu.swift
//  BooksCopy
//
//  Created by Samuel da Fonseca Martins on 30/05/23.
//

import SwiftUI


struct ReadingMenu: View {
    @Environment(\.colorScheme) private var colorScheme
    
    @State private var showSheet = false
    @Binding var x: Int
    @AppStorage("isDarkMode") private var isDarkMode = false
    @Binding var mode: Bool
    
    var body: some View {
        VStack(spacing: 5.0){
            Button(action: {}){
                ZStack{
                    RoundedRectangle(cornerRadius: 15).frame(width:250,height: 45).foregroundColor(ButtonColor)
                    HStack{
                        Text("Contents - 0%")
                            .font(.body)
                            .foregroundColor(LetterColor)
                            .padding(.trailing,70)
                        Image(systemName: "list.bullet").bold()
                            .foregroundColor(LetterColor)
                    }
                }
                
            }
            Button(action: {}){
                ZStack{
                    RoundedRectangle(cornerRadius: 15).frame(width:250,height: 45).foregroundColor(ButtonColor)
                    HStack{
                        Text("Search Book")
                            .font(.body)
                            .foregroundColor(LetterColor)
                            .padding(.trailing,85)
                        Image(systemName: "magnifyingglass").bold()
                            .foregroundColor(LetterColor)
                    }
                }
                
            }
            Button(action: {showSheet.toggle()}){
                ZStack{
                    RoundedRectangle(cornerRadius: 15).frame(width:250,height: 45).foregroundColor(ButtonColor)
                    HStack{
                        Text("Themes & Settings")
                            .font(.body)
                            .foregroundColor(LetterColor)
                            .padding(.trailing,10)
                        Image(systemName: "textformat.size").bold().offset(x:10)
                            .foregroundColor(LetterColor)
                        
                    }
                }
            }.font(.largeTitle)
                            .sheet(isPresented: $showSheet) {
                                Themes_Settings(x: $x, mode: $mode).presentationDetents([.height(380)])
                        }
            HStack(spacing: 5.0){
                
                
                Button(action: {}){
                    ZStack{
                        RoundedRectangle(cornerRadius: 15).frame(width:80,height: 45).foregroundColor(ButtonColor)
                        Image(systemName: "square.and.arrow.up").bold()
                            .foregroundColor(LetterColor)
                    }
                }
                Button(action: {}){
                    ZStack{
                        RoundedRectangle(cornerRadius: 15).frame(width:80,height: 45).foregroundColor(ButtonColor)
                        Image(systemName: "lock.rotation").bold()
                            .foregroundColor(LetterColor)
                    }
                }
                Button(action: {}){
                    ZStack{
                        RoundedRectangle(cornerRadius: 15).frame(width:80,height: 45).foregroundColor(ButtonColor)
                        Image(systemName: "bookmark").bold()
                            .foregroundColor(LetterColor)
                    }
                }}
                
            
//                        Menu {
//                            Button(action: {}){
//                                Label("Share", systemImage:  "square.and.arrow.up")
//
//                            }
//                            Button(action: {}){
//                                Label("Lock Rotation", systemImage:  "lock.rotation")
//                            }
//                            Button(action: {}){
//                                Label("Bookmark", systemImage:  "bookmark")
//                            }
//                            Button(action: {}){
//                                Label("Temas e Ajustes", systemImage:  "textformat.size")
//                            }
//                            Button(action: {}) {
//                                Label( "Buscar no Livro", systemImage: "magnifyingglass")}
//                            Button(action: {}) {
//                                Label("Conteúdo - 0%", systemImage: "list.bullet")
//                            }
//                            Divider()
//
//                        } label: {
//                            ZStack{
//                                RoundedRectangle(cornerRadius: 8)
//                                    .frame(width: 30,height: 30)
//                                    .foregroundColor(.gray)
//                                Image(systemName: "list.bullet")
//                            }
//
//                        }
            }
            
        }
    private var ButtonColor: Color{
            switch mode{
            case true:
                return /*@START_MENU_TOKEN@*/Color(red: 0.264, green: 0.255, blue: 0.216)/*@END_MENU_TOKEN@*/
            case false:
                return /*@START_MENU_TOKEN@*/Color(red: 0.884, green: 0.874, blue: 0.853)/*@END_MENU_TOKEN@*/
            @unknown default:
                return /*@START_MENU_TOKEN@*/Color(red: 0.579, green: 0.152, blue: 0.152)/*@END_MENU_TOKEN@*/
            }
            
        }
    private var LetterColor: Color{
            switch mode{
            case true:
                return Color(.white)
            case false:
                return Color(.black)
            @unknown default:
                return /*@START_MENU_TOKEN@*/Color(red: 0.579, green: 0.152, blue: 0.152)/*@END_MENU_TOKEN@*/
            }
            
        }

    }

//struct ReadingMenu_Previews: PreviewProvider {
//    @State var mode = true
//    static var previews: some View {
//        ReadingMenu(mode:$mode)
//    }
//}

