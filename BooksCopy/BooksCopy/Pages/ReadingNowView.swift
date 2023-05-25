//
//  ReadingNowView.swift
//  BooksCopy
//
//  Created by Luis Silva on 23/05/23.
//

import SwiftUI

struct ReadingNowView: View {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 34)!]
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size:17)!]
    }
    
    @State private var pick = 0
    
    var body: some View {
        NavigationView {
            ScrollView{
                HStack{
                    Text("Today's reading")
                        .colorMultiply(/*@START_MENU_TOKEN@*/Color(red: 0.017, green: 0.607, blue: 0.857)/*@END_MENU_TOKEN@*/)
                    
                    Text("5 minutes left")
                }.font(.system(size: 12.5))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 16)
                
                VStack{
                    Divider()
                        .padding(.horizontal, 16.0)
                    
                    Text("Current")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 16)
                    .font(.custom("Georgia-Bold", size: 18))
                    
                    HStack{
                        
                        Button() {
                            
                        }label: {
                            Image("image 1")
                              .resizable()
                              .scaledToFit()
                              .frame(maxHeight: 232)
                              .padding(.leading, 16)
                        }
                      VStack{
                        Text("The Swift Programming Language (Swift 5.7)")
                              .padding(.leading,16)
                              .font(.system(size:16))
                          Text("")
                          Text("1%")
                              .padding(.leading,-78)
                              .font(.system(size:12))
                              .colorMultiply(.gray)
                          Text("")
                          MenuComponent()
                        }
                      }
                    
                    
                    
                }
            }.navigationBarTitle(Text("Reading Now").font(.subheadline),displayMode: .large)
        }
            
    }
}

struct ReadingNowView_Previews: PreviewProvider {
    static var previews: some View {
        ReadingNowView()
    }
}


