//
//  BookPage2View.swift
//  BooksCopy
//
//  Created by Caio Lopes on 31/05/23.
//

import SwiftUI

struct BookPage2View: View {
    
    @State var isTapped: Bool = false
    @State var isShowMenu: Bool = false
    
    var body: some View {
        
        ZStack{
            VStack(alignment: .leading){
                
                Text("**BAR.** \n'This now strook twelf. Get thee to bed, Francisco. \n\n**FRAN.** \nFor this relief much thanks. 'Tis bitter cold, \nAnd i am sick at heart. \n\n**BAR.** \nHave you had quiet guard? \n\n**FRAN.** \n                         Not a mouse stirring. \n\n**BAR.** \nWell, good night. \nIf you do meet Horatio and Marcellus, The rivals of my watch, bid them make haste. \n\n      _Enter Horatio and Marcellus._ \n\n**FRAN.** \nI think I hear them. Stand ho! Who is there? \n\n**HOR.** \nFriends to this ground. \n\n**MAR.** \n               And liegemen to the Dane. \n\n**FRAN.** \nGive you good night.")
                
                //.font(.system(size:14)) //Aqui vamos mudar o *tamanho* e *temas*
                    .font(.body)
                    .multilineTextAlignment(.leading)
                
            }//.VStack
            
            .padding(.horizontal, 50)
            .padding(.vertical, 40)
            
            VStack{
                if isTapped{
                    Text("Hamlet")
                        .foregroundColor(.secondary)
                    
                    Spacer()
                    
                    Text("2")
                        .foregroundColor(.secondary)
                } else{
                    HStack{
                        ZStack{
                            Text("309 Páginas restantes no capítulo")
                                .foregroundColor(.secondary)
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
                            Text("2 de 324")
                                .foregroundColor(.secondary)
                            
                            HStack{
                                Spacer()
                               
                                ReadingMenuIcon(showingDetail: $isShowMenu)
                                        .padding(.trailing)
                                
                            }
                        }
                        
                    }
                }
            }//.VStack
            
        }//.ZStack
        .onTapGesture {
            withAnimation{
                isTapped.toggle()
                if isTapped && isShowMenu{
                        isShowMenu.toggle()
                }
            }

        }
    }
}

struct BookPage2View_Previews: PreviewProvider {
    static var previews: some View {
        BookPage2View()
    }
}
