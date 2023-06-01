//
//  TextBookView.swift
//  BooksCopy
//
//  Created by Caio Lopes on 30/05/23.
//

import SwiftUI

struct BookPage1View: View {
    
    @Environment(\.colorScheme) private var colorScheme
    
    var body: some View {
        VStack(alignment: .leading){
     
            //Title: Mudar o tamanho
            Text("Act 1, Scene 1")
                .foregroundColor(titleColor)
                .font(.title.bold())
                .frame(maxWidth: .infinity, alignment: .center)
                
            
            Divider()
                .frame(height: 2)
                .overlay(.primary)
            
            //Title 2
            Text("\nElsionre. A platform before the castle. \n")
                .font(.title2)
            
            //Subtitle
            Text("_Enter Barnardo and Francisco, two sentinels, meeting._\n")
                .font(.callout)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            Divider()
                .frame(height: 2)
                .overlay(.primary)
            
            //Body
            Text("**BAR.** \nWho's there? \n\n**FRAN.** \nNay, answer me. Stand and unfold yourself. \n\n**BAR.** \nLonge live the King! \n\n**FRAN.** \nBarnardo. \n\n**BAR.** \nHe. \n\n**FRAN.** \nYou come most carefully upon your hour.")
                .font(.callout)
                .multilineTextAlignment(.leading)
        }//.VStack
        
        .padding(.horizontal, 50)
    }
    
    private var titleColor: Color{
        switch colorScheme{
        case .light:
            return Color(red: 0.907, green: 0.383, blue: 0.081)
        case .dark:
          return Color(red: 1, green: 1, blue: 1)
        @unknown default:
          return Color(red: 0.0, green: 0.0, blue: 0.0)
        }
      }
    
}



struct BookPage1View_Previews: PreviewProvider {
    static var previews: some View {
        BookPage1View()
        
    }
}
