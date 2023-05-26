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
    
    let uiscreen = UIScreen.main.bounds
    
    @Environment(\.colorScheme) private var colorScheme
    
    var body: some View {
        
        NavigationView {
            ScrollView{
                //Text("Leando aora")
                  //  .navigationBarTitleDisplayMode(.inline)
                
                
                HStack{
                    Text("Today's reading")
                        .foregroundColor(Color(red: 0.017, green: 0.607, blue: 0.857))
                    
                    Text("5 minutes left")
                }.font(.system(size: 12.5))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 32)
                
                VStack{
                    Divider()
                        .padding(.horizontal, 32)
                    
                    ZStack{
                        Rectangle()
                                .fill(
                                    LinearGradient(gradient: Gradient(colors: [first_color_correct, second_color]),
                                                   startPoint: .top,
                                                   endPoint: .bottom))
                                .frame(width: self.uiscreen.width,
                                       height: 300,
                                       alignment: .center)
                        
                        
                        VStack{
                            Text("Current")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 32)
                            .font(.custom("Georgia-Bold", size: 18))
                            
                            HStack{
                                
                                Button() {
                                    
                                }label: {
                                    Image("image 1")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(maxHeight: 212)
                                        .padding(.leading, 1)
                                }
                                Text("   ")
                                VStack{
                                    Text("The Swift Programming Language (Swift 5.7)")
                                        .font(.system(size:14))
                                    Text("")
                                    Text("1%")
                                        .padding(.leading,-78)
                                        .font(.system(size:12))
                                        .colorMultiply(.gray)
                                    Text("")
                                    MenuComponent()
                                }.padding(.trailing, 2)
                            }
                        }.padding(.top, -30)
                    }
                    .padding(.top, -1)
                    
                }
            }.navigationBarTitle(Text("Reading Now").font(.subheadline),displayMode: .large)
        }
            
    }
    
    private var first_color: Color{
        switch colorScheme{
        case .light:
            return Color(red: 0.996, green: 0.996, blue: 0.996)
        case .dark:
            return /*@START_MENU_TOKEN@*/Color(red: 0.118, green: 0.118, blue: 0.118)/*@END_MENU_TOKEN@*/
        @unknown default:
            return /*@START_MENU_TOKEN@*/Color(red: 0.0, green: 0.0, blue: 0.0)/*@END_MENU_TOKEN@*/
        }
        
    }
    private var first_color_correct: Color{
        switch colorScheme{
        case .light:
            return Color(red: 0.996, green: 0.996, blue: 0.996)
        case .dark:
            return /*@START_MENU_TOKEN@*/Color(red: 0.0, green: 0.0, blue: 0.0)/*@END_MENU_TOKEN@*/
        @unknown default:
            return /*@START_MENU_TOKEN@*/Color(red: 0.0, green: 0.0, blue: 0.0)/*@END_MENU_TOKEN@*/
        }
        
    }
    private var second_color: Color{
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

struct ReadingNowView_Previews: PreviewProvider {
    static var previews: some View {
        ReadingNowView()
    }
}


