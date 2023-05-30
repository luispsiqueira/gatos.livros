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
                    VStack(spacing: 0){
                        Divider()
                        NavigationLink {
                            StoreFilterView()
                        } label:{
                            Text("\(Image(systemName: "text.justify.left"))").font(.title3).foregroundColor(.gray)
                            Text("Explore")
                            Spacer()
                            Text("\(Image(systemName: "chevron.forward"))").foregroundColor(.gray)
                        }.padding(.horizontal).padding(.vertical,8)
                        VStack{
                            Carrousel()
                            // Divider()
                            ZStack{
                                Rectangle()
                                    .fill(
                                        LinearGradient(gradient: Gradient(colors: [first_gray, second_gray]),
                                                       startPoint: .top,
                                                       endPoint: .bottom))
                                    .frame(width: self.uiscreen.width,
                                           alignment: .center)
                                    .aspectRatio(contentMode: .fill)
                                VStack(alignment: .leading) {
                                    Text("Top Charts").font(.custom("Georgia-Bold", size: 25)).bold().padding(.leading)
                                    Divider()
                                    
                                    ScrollView(.horizontal, showsIndicators: false){ //TOP CHARTS STACK
                                        HStack{
                                            VStack(alignment:.leading){
                                                Text("PAGOS")
                                                    .padding(.leading)
                                                    .font(.subheadline)
                                                    .fontWeight(.bold)
                                                TopCard(capa:"Barthes",title: "A Câmara Clara",author:"Roland Barthes", position: 1, color: .pink ).padding(.leading)
                                                Divider().padding(.leading)
                                                TopCard(capa:"Machado",title: "Memórias Postumas de \nBras Cubas",author:"Machado de Assis", position: 2, color: .green).padding(.leading)
                                                Divider().padding(.leading)
                                                TopCard(capa:"veredas",title: "Título",author:"Guimarães Rosa", position: 3, color: .blue).padding(.leading)
                                                    .padding(.bottom,32)
                                                
                                            } // TOP CHARTS STACK
                                            
                                            VStack(alignment:.leading){
                                                Text("GRATUITOS")
                                                    .font(.subheadline)
                                                    .fontWeight(.bold)
                                                TopCard( capa:"Mochileiro",title: "Título",author:"Douglas Adams", position: 1, color: .red)
                                                Divider()
                                                TopCard(capa:"Benjamin",title: "Título", author:"Walter Benjamin",position: 2, color: .green)
                                                Divider()
                                                TopCard(capa:"image 7",title: "Título",author:"idk", position: 3, color: .blue)
                                                    .padding(.bottom,32)
                                            }
                                            
                                        }
                                    } }.padding(.vertical)}// TOP CHARTS STACK
                            
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
                                //                            Divider()
                                
                            }
                        }
                        ZStack{
                            Rectangle()
                                .fill(
                                    LinearGradient(gradient: Gradient(colors: [first_gray, second_gray]),
                                                   startPoint: .top,
                                                   endPoint: .bottom))
                                .frame(width: self.uiscreen.width,
                                       alignment: .center)
                                .aspectRatio(contentMode: .fill)
                            VStack{
                                Text("Uma viagem pelo Brasil").font(.custom("Georgia-Bold", size: 20)).bold().frame(maxWidth: .infinity, alignment: .leading)
                                    .padding([.top, .leading])
                                ScrollView(.horizontal,showsIndicators: false){
                                    HStack{
                                        ThemedCarrousel()
                                        ThemedCarrousel()
                                        ThemedCarrousel()
                                        ThemedCarrousel().padding(.trailing,48)
                                    }}.padding(.vertical)
                                }.padding(.vertical)}
                        Divider()
                        GenFilter()
                    }
                }.navigationBarTitle(Text("Book Store").font(.headline), displayMode: .automatic)
                    
                
                
            }.padding(.horizontal)
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
    private var first_gray: Color{
            switch colorScheme{
            case .light:
                return Color(red: 0.996, green: 0.996, blue: 0.996)
            case .dark:
                return /*@START_MENU_TOKEN@*/Color(red: 0.118, green: 0.118, blue: 0.118)/*@END_MENU_TOKEN@*/
            @unknown default:
                return /*@START_MENU_TOKEN@*/Color(red: 0.0, green: 0.0, blue: 0.0)/*@END_MENU_TOKEN@*/
            }
            
        }

        private var second_gray: Color{
            switch colorScheme{
            case .light:
                return Color(red: 0.941, green: 0.941, blue: 0.941)
            case .dark:
                return /*@START_MENU_TOKEN@*/Color(red: 0.0, green: 0.0, blue: 0.0)/*@END_MENU_TOKEN@*/
            @unknown default:
                return /*@START_MENU_TOKEN@*/Color(red: 0.0, green: 0.0, blue: 0.0)/*@END_MENU_TOKEN@*/
            }
            
        }
}
    


struct StoreView_Previews: PreviewProvider {
    static var previews: some View {
        StoreView()
        
    }
}












