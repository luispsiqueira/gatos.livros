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
            HStack{
                
                ZStack {
                    RoundedRectangle(cornerRadius: 14)
                        .frame(width: 150,
                               height: 45,
                               alignment: .center)
                        .foregroundColor(button_color)
                        .foregroundColor(Color(red: 0.271, green: 0.271, blue: 0.271))
                    HStack{
                        Button() {
                            x-=1
                        }label: {
                            Image(systemName: "textformat.size.smaller")
                        }.padding(.trailing, 22.5)
                        Divider().padding(.vertical,368).foregroundColor(Color(red: 0.42, green: 0.42, blue: 0.441))
                        Button() {
                            x+=1
                        }label: {
                            
                            Image(systemName: "character")
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
            }.preferredColorScheme(mode ? .dark : .light)
        }
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


