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
    var body: some View {
        VStack{
            Divider()
                
            Text(microtitle).font(.footnote).frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading).padding(.top, 32)
            Text(title).font(.custom("Georgia-Bold", size: 25)).bold().frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            Text(subtitle).font(.custom("Georgia", size: 25)).frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading).foregroundColor(.gray)
            RoundedRectangle(cornerRadius: 14).fill(
                LinearGradient(gradient: Gradient(colors: [darkpink, lightpink]),
                               startPoint: .top,
                               endPoint: .bottom))
                .frame(width:325.0,height: 250)
                .padding(.leading)
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
}

struct Carrousel1_Previews: PreviewProvider {
    static var previews: some View {
        Carrousel1(title: "oi", microtitle: "oie", subtitle:  "oie", color: .orange)
    }
}
