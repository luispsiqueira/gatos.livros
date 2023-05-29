//
//  StoreView.swift
//  BooksCopy
//
//  Created by Samuel da Fonseca Martins on 23/05/23.
//

import SwiftUI


struct StoreView: View {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 36)!]
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size:17)!]
    }
    let uiscreen = UIScreen.main.bounds
    @Environment(\.colorScheme) private var colorScheme
    var body: some View {
        NavigationView {
            VStack(alignment: .leading){
                ScrollView{
                    Divider()
                    NavigationLink {
                        StoreFilterView()
                    } label:{
                        Text("\(Image(systemName: "text.justify.left"))").font(.title3).foregroundColor(.gray)
                        Text("Explore")
                        Spacer()
                        Text("\(Image(systemName: "chevron.forward"))").foregroundColor(.gray)
                    }.padding(.horizontal)
                    VStack{
                        Carrousel()
                        Divider()
                        VStack(alignment: .leading) {
                            Text("Top Charts").font(.custom("Georgia-Bold", size: 25)).bold().padding(.leading)
                            Divider()}
                        ScrollView(.horizontal, showsIndicators: false){ //TOP CHARTS STACK
                            HStack{
                                VStack(alignment:.leading){
                                    Text("PAGOS")
                                        .padding(.leading)
                                        .font(.subheadline)
                                        .fontWeight(.bold)
                                    TopCard(title: "Título", position: 1, color: .pink).padding(.leading)
                                    Divider().padding(.leading)
                                    TopCard(title: "Título", position: 2, color: .green).padding(.leading)
                                    Divider().padding(.leading)
                                    TopCard(title: "Título", position: 3, color: .blue).padding(.leading)
                                        .padding(.bottom,32)
                                    
                                } // TOP CHARTS STACK
                                
                                VStack(alignment:.leading){
                                    Text("GRATUITOS")
                                        .font(.subheadline)
                                        .fontWeight(.bold)
                                    TopCard(title: "Título", position: 1, color: .red)
                                    Divider()
                                    TopCard(title: "Título", position: 2, color: .green)
                                    Divider()
                                    TopCard(title: "Título", position: 3, color: .blue)
                                        .padding(.bottom,32)
                                }
                                
                            }
                        } // TOP CHARTS STACK
                        
                    }
                    ZStack{
                        Rectangle()
                            .fill(
                                LinearGradient(gradient: Gradient(colors: [first_color, second_color]),
                                               startPoint: .top,
                                               endPoint: .bottom))
                            .frame(width: self.uiscreen.width,
                                   alignment: .center)
                            .aspectRatio(contentMode: .fill)
                            VStack{
                            Divider()
                            
                            TwoRowsScroll()
                            Divider()}
                    }
                    
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack{
                            ThemedCarrousel()
                            ThemedCarrousel()
                            ThemedCarrousel()
                            ThemedCarrousel()
                        }}
                    
                }.navigationBarTitle(Text("Book Store").font(.subheadline), displayMode: .automatic)
                    .padding(.horizontal)
                
                
            }
        }
        
    }
    private var first_color: Color{
            switch colorScheme{
            case .light:
                return /*@START_MENU_TOKEN@*/Color(red: 0.579, green: 0.152, blue: 0.152)/*@END_MENU_TOKEN@*/
            case .dark:
                return /*@START_MENU_TOKEN@*/Color(red: 0.579, green: 0.152, blue: 0.152)/*@END_MENU_TOKEN@*/
            @unknown default:
                return /*@START_MENU_TOKEN@*/Color(red: 0.579, green: 0.152, blue: 0.152)/*@END_MENU_TOKEN@*/
            }
            
        }

        private var second_color: Color{
            switch colorScheme{
            case .light:
                return /*@START_MENU_TOKEN@*/Color(red: 0.71, green: 0.202, blue: 0.21)/*@END_MENU_TOKEN@*/
            case .dark:
                return /*@START_MENU_TOKEN@*/Color(red: 0.71, green: 0.202, blue: 0.21)/*@END_MENU_TOKEN@*/
            @unknown default:
                return /*@START_MENU_TOKEN@*/Color(red: 0.71, green: 0.202, blue: 0.21)/*@END_MENU_TOKEN@*/
            }
            
        }
}
    


struct StoreView_Previews: PreviewProvider {
    static var previews: some View {
        StoreView()
        
    }
}










