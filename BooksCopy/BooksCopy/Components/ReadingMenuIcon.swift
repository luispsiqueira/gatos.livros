//
//  ReadingMenuIcon.swift
//  BooksCopy
//
//  Created by Samuel da Fonseca Martins on 31/05/23.
//

import SwiftUI

struct ReadingMenuIcon: View {
    @Environment(\.colorScheme) private var colorScheme
    @Binding var showingDetail : Bool
    @Binding var mode: Bool
    @Binding var x: Int
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
                        ReadingMenu(x: $x, mode: $mode)
                        
                    }}
            }
        }
    }
    private var ButtonColor: Color{
            switch mode{
            case true:
                return Color(red: 0.227, green: 0.227, blue: 0.236)
            case false:
                return /*@START_MENU_TOKEN@*/Color(red: 0.271, green: 0.271, blue: 0.271)/*@END_MENU_TOKEN@*/
            @unknown default:
                return /*@START_MENU_TOKEN@*/Color(red: 0.579, green: 0.152, blue: 0.152)/*@END_MENU_TOKEN@*/
            }
            
        }
}

//struct ReadingMenuIcon_Previews: PreviewProvider {
//    @State var state = true
//    static var previews: some View {
//        ReadingMenuIcon(showingDetail: $state)
//    }
//}
