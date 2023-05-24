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
    var body: some View {
        NavigationView {
            VStack{
                List{
                    NavigationLink {
                        StoreFilterView()
                    } label:{
                        Text("\(Image(systemName: "text.justify.left"))").font(.title3).foregroundColor(.gray)
                        Text(" Browse Sections")}
                        VStack{
                        Carousel()
                            VStack(alignment: .leading) {
                                Text("Top Charts").font(.custom("Georgia-Bold", size: 25)).bold()
                                Divider()}
                                ScrollView(.horizontal, showsIndicators: false){
                                    HStack{
                                        VStack(alignment:.leading){
                                            Text("PAGOS")
                                                .font(.subheadline)
                                                .fontWeight(.bold)
                                            
                                            TopCard(title: "TItulo 1", position: 1, color: .red)
                                            TopCard(title: "Titulo", position: 2, color: .green)
                                            TopCard(title: "Titulo", position: 3, color: .blue)
                                        }
                                        VStack(alignment:.leading){
                                            Text("PAGOS")
                                                .font(.subheadline)
                                                .fontWeight(.bold)
                                            TopCard(title: "TItulo 1", position: 1, color: .red)
                                            TopCard(title: "Titulo", position: 2, color: .green)
                                            TopCard(title: "Titulo", position: 3, color: .blue)
                                        }

                                    }
                            }
                        }.listStyle(.plain)
                    }.navigationBarTitle(Text("Book Store").font(.subheadline), displayMode: .automatic)
                    .listStyle(.plain)
                    
                    
                }
            }
        }
    }
    


struct StoreView_Previews: PreviewProvider {
    static var previews: some View {
        StoreView()
        
    }
}


struct Carousel: View {
    var body: some View {
        VStack{
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing:15){
                    Carrousel1(title: "Título", microtitle: "MICROTÍTULO", subtitle: "Subtítulo", color: .cyan)
                    Carrousel1(title: "Título", microtitle: "MICROTÍTULO", subtitle: "Subtítulo", color: .mint)
                    Carrousel1(title: "Título", microtitle: "MICROTÍTULO", subtitle: "Subtítulo", color: .purple)
                    }
                
            }
            
        }
    }
}

struct TopCard: View {
    
    var title:String
    var position:Int
    var color:Color
    
    var body: some View {
        VStack{
            HStack{
                RoundedRectangle(cornerRadius: 14)
                    .fill(color.gradient)
                    .frame(width: 60,height: 100)
                Text("\(position)").font(.custom("Georgia", size: 50)).fontWeight(.light)
                VStack{
                    Text(title)
                        .fontWeight(.bold)
                    Text("Autor").foregroundColor(.gray)
                }
            }
        }
    }
}

struct Carrousel1: View {
    var title:String
    var microtitle:String
    var subtitle:String
    var color:Color
    var body: some View {
        VStack{
            Text(microtitle).font(.footnote).frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading,0)
            Text(title).font(.custom("Georgia-Bold", size: 25)).bold().frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading,0)
            Text(subtitle).font(.custom("Georgia-Bold", size: 25)).frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading,0).foregroundColor(.gray)
            RoundedRectangle(cornerRadius: 14).fill(color.gradient).frame(width:325.0,height: 250)
        }
    }
}
