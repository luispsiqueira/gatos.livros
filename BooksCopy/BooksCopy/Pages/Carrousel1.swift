//
//  Carrousel1.swift
//  BooksCopy
//
//  Created by Samuel da Fonseca Martins on 25/05/23.
//

import SwiftUI

struct Carrousel1: View {
    @Environment(\.colorScheme) private var colorScheme
    var title:String
    var microtitle:String
    var subtitle:String
    var color:Color
    var fundo:String
    
    var getFundo: LinearGradient {
        if fundo == "pink" {
            return LinearGradient(gradient: Gradient(colors: [darkpink, lightpink]),
                                  startPoint: .top,
                                  endPoint: .bottom)}
        
        if fundo == "rose"{
            return LinearGradient(gradient: Gradient(colors: [lightrose, darkrose]),
                                  startPoint: .topLeading,
                                  endPoint: .bottomTrailing)}
        if fundo == "blue"{
            return LinearGradient(gradient: Gradient(colors: [lightblue, darkblue]),
                                  startPoint: .bottom,
                                  endPoint: .top)}
        
            return LinearGradient(gradient: Gradient(colors: [darkblue, lightblue]),
                                         startPoint: .topLeading,
                                         endPoint: .bottomTrailing)
    }
    var body: some View {
        VStack(alignment: .leading){
            Divider()
                
            Text(microtitle).font(.footnote).frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 32)
            Text(title).font(.custom("Georgia-Bold", size: 25)).bold().frame(maxWidth: .infinity, alignment: .leading)
            Text(subtitle).font(.custom("Georgia", size: 20)).frame(maxWidth: .infinity, alignment: .leading)
            .foregroundColor(.gray)
            RoundedRectangle(cornerRadius: 14).fill(getFundo)

                .frame(width:325.0,height: 250)
                
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
        }
        
    }
    private var darkpink: Color{
            switch colorScheme{
            case .light:
                return /*@START_MENU_TOKEN@*/Color(red: 0.505, green: 0.317, blue: 0.356)/*@END_MENU_TOKEN@*/
            case .dark:
                return /*@START_MENU_TOKEN@*/Color(red: 0.505, green: 0.317, blue: 0.356)/*@END_MENU_TOKEN@*/
            @unknown default:
                return /*@START_MENU_TOKEN@*/Color(red: 0.505, green: 0.317, blue: 0.356)/*@END_MENU_TOKEN@*/
            }
            
        }

        private var lightpink: Color{
            switch colorScheme{
            case .light:
                return /*@START_MENU_TOKEN@*/Color(red: 0.638, green: 0.434, blue: 0.482)/*@END_MENU_TOKEN@*/
            case .dark:
                return /*@START_MENU_TOKEN@*/Color(red: 0.638, green: 0.434, blue: 0.482)/*@END_MENU_TOKEN@*/
            @unknown default:
                return /*@START_MENU_TOKEN@*/Color(red: 0.638, green: 0.434, blue: 0.482)/*@END_MENU_TOKEN@*/
            }
            
        }
    private var darkrose: Color{
            switch colorScheme{
            case .light:
                return Color(red: 0.492, green: 0.18, blue: 0.292)
            case .dark:
                return Color(red: 0.492, green: 0.18, blue: 0.292)
            @unknown default:
                return Color(red: 0.492, green: 0.18, blue: 0.292)
            }
            
        }
    private var lightrose: Color{
            switch colorScheme{
            case .light:
                return Color(red: 0.575, green: 0.287, blue: 0.395)
            case .dark:
                return Color(red: 0.575, green: 0.287, blue: 0.395)
            @unknown default:
                return Color(red: 0.575, green: 0.287, blue: 0.395)
            }
            
        }
    private var lightblue: Color{
            switch colorScheme{
            case .light:
                return Color(red: 0.265, green: 0.368, blue: 0.409)
            case .dark:
                return Color(red: 0.265, green: 0.368, blue: 0.409)
            @unknown default:
                return Color(red: 0.265, green: 0.368, blue: 0.409)
            }
            
        }
    private var darkblue: Color{
            switch colorScheme{
            case .light:
                return Color(red: 0.164, green: 0.257, blue: 0.294)
            case .dark:
                return Color(red: 0.164, green: 0.257, blue: 0.294)
            @unknown default:
                return Color(red: 0.164, green: 0.257, blue: 0.294)
            }
            
        }
}

struct Carrousel1_Previews: PreviewProvider {
    static var previews: some View {
        Carrousel1(title: "oi", microtitle: "oie", subtitle:  "oie", color: .orange, fundo: "pink")
    }
}
