//
//  Carrousel1.swift
//  BooksCopy
//
//  Created by Samuel da Fonseca Martins on 25/05/23.
//

import SwiftUI

struct Carrousel1: View {
    var title:String
    var microtitle:String
    var subtitle:String
    var color:Color
    var body: some View {
        VStack{
            Divider()
            Text(microtitle).font(.footnote).frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            Text(title).font(.custom("Georgia-Bold", size: 25)).bold().frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            Text(subtitle).font(.custom("Georgia-Bold", size: 25)).frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading).foregroundColor(.gray)
            RoundedRectangle(cornerRadius: 14).fill(color.gradient).frame(width:325.0,height: 250).padding(.leading).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        }
    }
}

struct Carrousel1_Previews: PreviewProvider {
    static var previews: some View {
        Carrousel1(title: "oi", microtitle: "oie", subtitle:  "oie", color: .orange)
    }
}
