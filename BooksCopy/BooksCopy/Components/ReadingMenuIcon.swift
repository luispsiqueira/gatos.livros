//
//  ReadingMenuIcon.swift
//  BooksCopy
//
//  Created by Samuel da Fonseca Martins on 31/05/23.
//

import SwiftUI

struct ReadingMenuIcon: View {
    @Environment(\.colorScheme) private var colorScheme
    @State var showingDetail = false
    var body: some View {
        Button(action: {self.showingDetail.toggle()}){
            ZStack{
                if showingDetail == false {
                    
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30,height: 30)
                        .foregroundColor(ButtonColor)
                    Image(systemName: "list.bullet")
                    
                }
                if showingDetail == true{
                    ZStack{
                        Button(action: {self.showingDetail.toggle()}){
                            Rectangle()
                                .foregroundColor(/*@START_MENU_TOKEN@*/.green/*@END_MENU_TOKEN@*/).frame(width: 900, height: 900).opacity(0)
                        }
                        ReadingMenu()
                        .padding([.bottom, .trailing], 180.0)}}
            }
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

struct ReadingMenuIcon_Previews: PreviewProvider {
    static var previews: some View {
        ReadingMenuIcon()
    }
}