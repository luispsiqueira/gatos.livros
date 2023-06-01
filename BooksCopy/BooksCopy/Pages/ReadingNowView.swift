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
                    
                    HStack{
                        Gauge(value: 125, in: 0...300){
                            Text("")
                        }.gaugeStyle(.accessoryCircularCapacity)
                            .scaleEffect(.minimum(0.3, 0.3)).padding(.leading, -23)
                            .tint(Color(red: 0.017, green: 0.607, blue: 0.857))
                        
                        Text("Today's reading")
                            .foregroundColor(Color(red: 0.017, green: 0.607, blue: 0.857)).padding(.leading, -22)
                        
                        Text("5 minutes left")
                    }.font(.system(size: 12.5))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 32)
                        .padding(.top, -20)
                    
                    
                    
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
                                    .padding(.top, 5)
                                
                                HStack{
                                    
                                    Button() {
                                        
                                    }label: {
                                        Image("image 1")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(maxHeight: 212)
                                            .padding(.leading,1.208)
                                            .shadow(radius: 14)
                                    }.padding(.top, 5)
                                    Text("   ")
                                    VStack{
                                        Text("The Swift Programming Language (Swift 5.7)")
                                            .font(.system(size:14))
                                        Text("")
                                        Text("51%")
                                            .padding(.leading,-78)
                                            .font(.system(size:12))
                                            .foregroundColor(Color.gray)
                                        Text("")
                                        MenuComponent()
                                            .padding(.leading,-78)
                                    }.padding(.trailing, 2)
                                }
                            }.padding(.top, -30)
                        }
                        .padding(.top, -8)
                        
                        ZStack{
                            Rectangle()
                                .fill(
                                    LinearGradient(gradient: Gradient(colors: [first_color, second_color]),
                                                   startPoint: .top,
                                                   endPoint: .bottom))
                                .frame(width: self.uiscreen.width,
                                       height: 418,
                                       alignment: .center)
                            
                            
                            VStack{
                                Text("Want to Read")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.leading, 32)
                                    .font(.custom("Georgia-Bold", size: 24))
                                Text("Books you would like to read next.")
                                    .foregroundColor(Color.gray)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.leading, 32)
                                    .font(.system(size: 14))
                                
                                
                                
                                HStack{
                                    ScrollView(.horizontal) {
                                        HStack{
                                            
                                            BookComponent(mockBooks[0],182)
                                            BookComponent(Book(title: "", author: "", readingProgress: 0.0, imageName:"image 6"),182)
                                                .padding(.leading,-20)
                                            BookComponent(Book(title: "", author: "", readingProgress: 0.0, imageName:"image 7"),182)
                                                .padding(.leading,-20)
                                            BookComponent(Book(title: "", author: "", readingProgress: 0.0, imageName:"image 8"),182)
                                                .padding(.leading,-20)
                                            
                                        }.padding(.leading, 16)
                                    }.scrollIndicators(.hidden)
                                }
                            }.padding(.top, -70)
                            
                            Divider().padding(.top, 282)
                                .padding(.horizontal, 32)
                            
                            Button() {
                                
                            }label: {
                                HStack{
                                    Text("See All ")
                                        .font(.system(size: 14))
                                        .padding(.leading, -163)
                                        .padding(.top, 328)
                                        .foregroundColor(.primary)
                                    Text(">")
                                        .font(.system(size: 14))
                                        .padding(.leading, -120)
                                        .padding(.top, 328)
                                        .foregroundColor(.gray)
                                }
                                
                            }
                        }
                        .padding(.top, -8)
                        
                        
                        
                        ZStack{
                            Rectangle()
                                .fill(
                                    LinearGradient(gradient: Gradient(colors: [first_color, second_color]),
                                                   startPoint: .top,
                                                   endPoint: .bottom))
                                .frame(width: self.uiscreen.width,
                                       height: 1050,
                                       alignment: .center)
                            
                            
                            VStack{
                                Text("Popular")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.leading, 32)
                                    .padding(.top,55)
                                    .font(.custom("Georgia-Bold", size: 24))
                                
                                ZStack{
                                    RoundedRectangle(cornerRadius: 14)
                                        .fill(first_color)
                                        .frame(width: self.uiscreen.width - 64,
                                               height: 190,
                                               alignment: .center)
                                        .shadow(radius: 14)
                                    
                                    Text("Read before \n watching")
                                        .font(.custom("Georgia-Bold", size: 16))
                                    .padding(.trailing,178)
                                    
                                    Image("image 3")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(maxHeight: 180)
                                        .padding(.trailing,-193)
                                        .padding(.top, 27)
                                    
                                }.padding(.top,10)
                                Spacer()
                                
                                
                                ZStack{
                                    RoundedRectangle(cornerRadius: 14)
                                        .fill(first_color)
                                        .frame(width: self.uiscreen.width - 64,
                                               height: 190,
                                               alignment: .center)
                                        .shadow(radius: 14)
                                    
                                    Text("Brazilian \n authors")
                                        .font(.custom("Georgia-Bold", size: 16))
                                    .padding(.leading,-140)
                                    
                                    Image("image 4")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(maxHeight: 200)
                                        .padding(.leading,190)
                                        .padding(.top, 18)
                                    
                                }.padding(.top,-15)
                                Spacer()
                                
                                
                                ZStack{
                                    RoundedRectangle(cornerRadius: 14)
                                        .fill(first_color)
                                        .frame(width: self.uiscreen.width - 64,
                                               height: 190,
                                               alignment: .center)
                                        .shadow(radius: 14)
                                    
                                    Text("Pressed books")
                                        .font(.custom("Georgia-Bold", size: 16))
                                    .padding(.trailing,165)
                                    
                                    Image("image 3")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(maxHeight: 180)
                                        .padding(.trailing,-193)
                                        .padding(.top, 27)
                                }.padding(.top,-15)
                                Spacer()
                                
                                
                                ZStack{
                                    RoundedRectangle(cornerRadius: 14)
                                        .fill(
                                            LinearGradient(gradient: Gradient(colors: [/*@START_MENU_TOKEN@*/Color(red: 0.092, green: 0.102, blue: 0.136)/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/Color(red: 0.133, green: 0.154, blue: 0.204)/*@END_MENU_TOKEN@*/]),
                                                           startPoint: .leading,
                                                           endPoint: .trailing))
                                        .frame(width: self.uiscreen.width - 64,
                                               height: 190,
                                               alignment: .center)
                                        .shadow(radius: 14)
                                    
                                    Text("Comming soon")
                                        .font(.custom("Georgia-Bold", size: 16))
                                    .padding(.leading,-140)
                                    .padding(.top, -70)
                                    .foregroundColor(.white)
                                    
                                    
                                    Image("image 5")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(maxHeight: 190)
                                        .padding(.trailing,-135)
                                }.padding(.top,-15)
                                Spacer()
                                
                                
                            }.padding(.top, -30)
                        }.padding(.top,-8)
                        
                        
                        
                        
                        ZStack{
                            Rectangle()
                                .fill(
                                    LinearGradient(gradient: Gradient(colors: [first_color, second_color]),
                                                   startPoint: .top,
                                                   endPoint: .bottom))
                                .frame(width: self.uiscreen.width,
                                       height: 418,
                                       alignment: .center)
                            
                            
                            VStack{
                                Text("What are we reading this week")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.leading, 32)
                                    .font(.custom("Georgia-Bold", size: 24))
                                
                                
                                
                                HStack{
                                    ScrollView(.horizontal) {
                                        HStack{
                                            
                                            Button() {
                                                
                                            }label: {
                                                Image("image 2")
                                                .resizable()
                                                    .scaledToFit()
                                                    .frame(maxHeight: 182)
                                                    .padding(.leading, 1)
                                                    .padding(.top, 20)
                                                    .shadow(radius: 14)

                                            }.padding(.leading, 16)
        
                                            Button() {
                                                
                                            }label: {
                                                Image("image 6")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(maxHeight: 182)
                                                    .padding(.leading, 1)
                                                    .padding(.top, 20)
                                                    .shadow(radius: 14)
                                            }.padding(.leading,16)
                                            
                                            Button() {
                                                
                                            }label: {
                                                Image("image 7")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(maxHeight: 182)
                                                    .padding(.leading, 1)
                                                    .padding(.top, 20)
                                                    .shadow(radius: 14)
                                            }.padding(.leading,16)
                                            
                                            Button() {
                                                
                                            }label: {
                                                Image("image 8")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(maxHeight: 182)
                                                    .padding(.leading, 1)
                                                    .padding(.top, 20)
                                                    .shadow(radius: 14)
                                            }.padding(.leading,16)
                                            
                                            
                                        }.padding(.leading, 32)
                                    }.scrollIndicators(.hidden)
                                }
                            }.padding(.top, -70)
                            
                            Divider().padding(.top, 282)
                                .padding(.horizontal, 32)
                            
                            Button() {
                                
                            }label: {
                                HStack{
                                    Text("See All ")
                                        .font(.system(size: 14))
                                        .padding(.leading, -163)
                                        .padding(.top, 328)
                                        .foregroundColor(.primary)
                                    Text(">")
                                        .font(.system(size: 14))
                                        .padding(.leading, -120)
                                        .padding(.top, 328)
                                        .foregroundColor(.gray)
                                }
                                
                            }
                        }
                        .padding(.top, -8)
                        
                        
                        
                        
                        
                        ZStack{
                            Rectangle()
                                .fill(
                                    LinearGradient(gradient: Gradient(colors: [first_color_correct, first_color_correct]),
                                                   startPoint: .top,
                                                   endPoint: .bottom))
                                .frame(width: self.uiscreen.width,
                                       height: 498,
                                       alignment: .center)
                            
                            
                            VStack{
                                Text("Reading Goals")
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .font(.custom("Georgia-Bold", size: 24))
                                Text("Read every day, see your stars soar and finish more books.")
                                    .foregroundColor(.gray)
                                    .padding(.top,-5)
                                    .multilineTextAlignment(.center)
                                    .frame(maxWidth: 300, alignment: .center)
                                    .font(.system(size: 12))
                                
                                //clock
                                Gauge(value: 125, in: 0...300) {
                                } currentValueLabel: {
                                    VStack{
                                        Text("Today's Reading")
                                            .font(.custom("Georgia-Bold", size: 18))
                                        Text("1:05")
                                            .font(.custom("Georgia-Bold", size: 70))
                                            .padding(.top,-30)
                                        HStack{
                                            Text("of your 5-minute goal")
                                                .font(.system(size: 14))
                                                .foregroundColor(.primary)
                                            Text(">")
                                                .font(.system(size: 14))
                                                .foregroundColor(.gray)
                                        }
                                        
                                    }.padding(.top,-90)
                                    
                                    
                                }.gaugeStyle(myGaugeStyle())
                                
                                ZStack{
                                    RoundedRectangle(cornerRadius: 40)
                                        .frame(width: 310,
                                               height: 60,
                                               alignment: .center)
                                        .foregroundColor(button_color)
                                    VStack{
                                        Text("Keep reading")
                                            .bold()
                                            .font(.system(size: 14))
                                            .foregroundColor(.white)
                                        Text("The swift Programming Language (Swift...")
                                            .font(.system(size: 12))
                                            .foregroundColor(.white)
                                    }
                                }.padding(.top, -120)
    
                            }.padding(.top, -60)
                            Spacer()
                            Divider().padding(.top, 260)
                                .padding(.horizontal, 32)
                            
                            Button() {
                                
                            }label: {
                                HStack{
                                    Text("Terms and Conditions ")
                                        .font(.system(size: 14))
                                        .padding(.leading, -163)
                                        .padding(.top, 348)
                                        .foregroundColor(.primary)
                                    Text(">")
                                        .font(.system(size: 14))
                                        .padding(.leading, -22)
                                        .padding(.top, 348)
                                        .foregroundColor(.gray)
                                }
                                
                            }
                        }
                        .padding(.top, -8)
                        
                    }
                    .navigationBarTitle(Text("Reading Now").font(.subheadline),displayMode: .large)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing ) {
                            Button() {
                                
                            }label: {
                                Image(systemName: "person.crop.circle")
                                    .font(.custom("", size: 35))
                                    .padding(.top, 80)
                            }}
                    }
                    
                
            }
                
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
    private var button_color: Color{
        switch colorScheme{
        case .light:
            return /*@START_MENU_TOKEN@*/Color(red: 0.0, green: 0.0, blue: 0.0)/*@END_MENU_TOKEN@*/
        case .dark:
            return /*@START_MENU_TOKEN@*/Color(red: 0.2, green: 0.2, blue: 0.2)/*@END_MENU_TOKEN@*/
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




struct myGaugeStyle: GaugeStyle {
    
    @Environment(\.colorScheme) private var colorScheme
    
    private var myblue = Color(red: 0.017, green: 0.607, blue: 0.857)
 
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
 
            Circle()
                .trim(from: 0, to: 1.2 * configuration.value)
                .stroke(bar_time,
                            style: StrokeStyle(
                              lineWidth: 10,
                              lineCap: .round
                            ))
                .rotationEffect(.degrees(180))
 
            Circle()
                .trim(from: 0, to: 0.4466 * configuration.value)
                .stroke(myblue,
                            style: StrokeStyle(
                              lineWidth: 10,
                              lineCap: .round
                            ))
                .rotationEffect(.degrees(180))
 
            VStack {
                configuration.currentValueLabel
                    //.font(.system(size: 10, weight: .bold, design: .rounded))
                    .foregroundColor(.primary)
                
            }
 
        }
        .frame(width: 300, height: 300)
 
    }
    
    private var bar_time: Color{
        switch colorScheme{
        case .light:
            return /*@START_MENU_TOKEN@*/Color(red: 0.95, green: 0.945, blue: 0.967)/*@END_MENU_TOKEN@*/
        case .dark:
            return /*@START_MENU_TOKEN@*/Color(red: 0.11, green: 0.11, blue: 0.118)/*@END_MENU_TOKEN@*/
        @unknown default:
            return /*@START_MENU_TOKEN@*/Color(red: 0.0, green: 0.0, blue: 0.0)/*@END_MENU_TOKEN@*/
        }
        
    }
 
}
