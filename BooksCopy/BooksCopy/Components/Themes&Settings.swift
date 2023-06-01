//
//  Themes&Settings.swift
//  BooksCopy
//
//  Created by Luis Silva on 31/05/23.
//

import SwiftUI

struct Themes_Settings: View {
    
    @Binding var x: Int
    @Environment(\.colorScheme) private var colorScheme
    
    @Binding var mode: Bool
    
    var body: some View {
        VStack{
            Text("Themes & Settings")
                .font(.title)
                .bold()
                .offset(x: -50, y: 585)
            HStack{
                Text("Focus")
                    .foregroundColor(.gray)
                    .bold()
                Text("Options >")
                    .bold()
            }.offset(x: -106, y: 585)
            Image(systemName: "xmark.circle.fill").offset(x: 158, y: 534).foregroundColor(.gray).font(.custom("", size: 30))
            HStack{
                
                ZStack {
                    RoundedRectangle(cornerRadius: 14)
                        .frame(width: 155,
                               height: 45,
                               alignment: .center)
                        .foregroundColor(button_color)
                        .foregroundColor(Color(red: 0.271, green: 0.271, blue: 0.271))
                    HStack{
                        Button() {
                            x-=1
                        }label: {
                            Image(systemName: "textformat.size.smaller")
                                .font(.custom("", size: 20))
                        }.padding(.trailing, 22.5)
                        Divider().padding(.vertical,368).foregroundColor(Color(red: 0.42, green: 0.42, blue: 0.441))
                        Button() {
                            x+=1
                        }label: {
                            
                            Image(systemName: "character")
                                .font(.custom("", size: 26))
                        }
                        .padding(.leading, 22.5)
                    }
                }
                
                
                                ZStack {
                                    RoundedRectangle(cornerRadius: 14)
                                        .frame(width: 55,
                                               height: 45,
                                               alignment: .center)
                                        .foregroundColor(button_color)
                                        .foregroundColor(Color(red: 0.271, green: 0.271, blue: 0.271))
                                    HStack{
                                        Button() {
                
                                        }label: {
                                            Image(systemName: "scroll")
                                                .bold()
                                                .font(.system(size: 20))
                                        }
                                    }
                                }
                                ZStack {
                                    RoundedRectangle(cornerRadius: 14)
                                        .frame(width: 55,
                                               height: 45,
                                               alignment: .center)
                                        .foregroundColor(button_color)
                                        .foregroundColor(Color(red: 0.271, green: 0.271, blue: 0.271))
                                    HStack{
                                        Button() {
                
                                        }label: {
                                            Image(systemName: "arrow.backward.square")
                                                .bold()
                                                .font(.system(size: 20))
                                        }
                                    }
                                }
                                ZStack {
                                    RoundedRectangle(cornerRadius: 14)
                                        .frame(width: 55,
                                               height: 45,
                                               alignment: .center)
                                        .foregroundColor(button_color)
                                        .foregroundColor(Color(red: 0.271, green: 0.271, blue: 0.271))
                                    HStack{
                                        Menu("\(Image(systemName:"circle.lefthalf.fill"))") {
                                            Button() {
                                                mode = false
                                            }label: {
                                                Label("Match Surrondings", systemImage: "sun.min")
                                            }
                                            Button() {
                                                mode = true
                                            }label: {
                                                Label("Match Device", systemImage: "circle.lefthalf.fill")
                                            }
                                            Button() {
                                                mode = true
                                            }label: {
                                                Label("Dark", systemImage: "moon.stars.fill")
                                            }
                                            Button() {
                                                mode = false
                                            }label: {
                                                Label("Light", systemImage: "sun.max.fill")
                                            }
                                        }
                                    }
                
                                }
                            }.padding(.top, 210)
                            ThemeButton().offset(y: -340)
                
            }.preferredColorScheme(mode ? .dark : .light).offset(y:-140)
        }
    
        private var button_color: Color{
            switch colorScheme{
            case .light:
                return Color(red: 0.89, green: 0.89, blue: 0.899)
            case .dark:
                return Color(red: 0.271, green: 0.271, blue: 0.271)
            @unknown default:
                return /*@START_MENU_TOKEN@*/Color(red: 0.0, green: 0.0, blue: 0.0)/*@END_MENU_TOKEN@*/
            }

        }
    }
    
    struct Themes_Settings_Previews: PreviewProvider {
        @State static var x: Int = 0
        @State static var mode: Bool = false
        static var previews: some View {
            Themes_Settings(x: $x, mode: $mode)
        }
    }
    
    

