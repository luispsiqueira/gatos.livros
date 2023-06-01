//
//  TextBookView.swift
//  BooksCopy
//
//  Created by Caio Lopes on 30/05/23.
//

import SwiftUI

struct BookPage1View: View {
    
    @Environment(\.colorScheme) private var colorScheme
    @State var isTapped: Bool = false
    @State var isShowMenu: Bool = false
    
    @State private var showSheet = false
    @State private var x: Int = 8
    @Binding var mode: Bool
    
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                
      
                
                //Title: Mudar o tamanho
                Text("Act 1, Scene 1")
                    .foregroundColor(titleColor)
                    .font(.system(size: CGFloat(x)*2 + 8))
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .center)
                    //.preferredColorScheme(.dark)
                    //.preferredColorScheme(mode ? .dark : .light)
                
                
                Divider()
                    .frame(height: 2)
                    .overlay(.primary)
                
                //Title 2
                Text("\nElsionre. A platform before the castle. \n")
                    .font(.system(size: CGFloat(x)*2 + 4))
                
                //Subtitle
                Text("_Enter Barnardo and Francisco, two sentinels, meeting._\n")
                    .font(.callout)
                    .font(.system(size: CGFloat(x)*2))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                Divider()
                    .frame(height: 2)
                    .overlay(.primary)
                
                //Body
                Text("**BAR.** \nWho's there? \n\n**FRAN.** \nNay, answer me. Stand and unfold yourself. \n\n**BAR.** \nLonge live the King! \n\n**FRAN.** \nBarnardo. \n\n**BAR.** \nHe. \n\n**FRAN.** \nYou come most carefully upon your hour.")
                    .font(.callout)
                    .font(.system(size: CGFloat(x)*2))
                    .multilineTextAlignment(.leading)
            }//.VStack
            
            .padding(.horizontal, 50)
            .padding(.vertical, 40)
            //.preferredColorScheme(mode ? .dark : .light)
            
            VStack{
                if isTapped{
                    Text("Hamlet")
                        .font(.system(size: CGFloat(x)*2))
                        .foregroundColor(.secondary)
                    
                    Spacer()
                    
                    Text("1")
                        .font(.system(size: CGFloat(x)*2))
                        .foregroundColor(.secondary).offset(y: -30)
                } else{
                    HStack{
                        ZStack{
                            Text("310 Páginas restantes no capítulo")
                                .foregroundColor(.secondary)
                                .font(.system(size: CGFloat(x)*2))
                            HStack{
                                Spacer()
                                Button(){
                                    
                                }label: {
                                    Image(systemName: "xmark.circle.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 28)
                                        .foregroundColor(.secondary)
                                }
                                .padding(.trailing, 20)
                            }
                        }
                    }
                    
                    
                    Spacer()
                    
                    HStack{
                        ZStack{
                            Text("1 de 324")
                                .foregroundColor(.secondary)
                            
                            HStack{
                                Spacer()
                               
                                ReadingMenuIcon(showingDetail: $isShowMenu, mode: $mode, x: $x)
                                        .padding(.trailing)
                                
                            }
                        }
                        
                    }.offset(y: -30)
                }
            }//.VStack
            
            
        }//.preferredColorScheme(mode ? .dark : .light)
        //.ZStack
        .onTapGesture {
            withAnimation{
                isTapped.toggle()
                if isTapped && isShowMenu{
                        isShowMenu.toggle()
                }
            }
            
        }
        
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


//
//struct BookPage1View_Previews: PreviewProvider {
//    static var previews: some View {
//        BookPage1View()
//        
//    }
//}
