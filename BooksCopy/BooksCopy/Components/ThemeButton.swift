//
//  ThemeButton.swift
//  BooksCopy
//
//  Created by Samuel da Fonseca Martins on 31/05/23.
//

import SwiftUI

struct ThemeButton: View {
    @Environment(\.colorScheme) private var colorScheme
    var body: some View {
        VStack{
            HStack{
                Button(action: {}){//Original
                    ZStack{
                        RoundedRectangle(cornerRadius: 20).frame(width: 120, height: 90).foregroundColor(OriginalColor).shadow(radius: 0.5 )
                        VStack{
                            Text("Aa").font(.custom("Original", size: 35))
                            Text("Original").font(.custom("Original", size: 15))
                        }
                    }
                }//Original
                Button(action: {}){//Quiet
                    ZStack{
                        RoundedRectangle(cornerRadius: 20).frame(width: 120, height: 90).foregroundColor(QuietColor)
                        VStack{
                            Text("Aa").font(.custom("Georgia", size: 35)).foregroundColor(Color.gray)
                            Text("Quiet").font(.custom("Georgia", size: 15)).foregroundColor(Color.gray)
                        }
                    }
                }//Quiet
                Button(action: {}){//Paper
                    ZStack{
                        RoundedRectangle(cornerRadius: 20).frame(width: 120, height: 90).foregroundColor(PaperColor).shadow(radius: 0.5 )
                        VStack{
                            Text("Aa").font(.custom("Charter", size: 35))
                            Text("Paper").font(.custom("Charter", size: 15))
                        }
                    }
                }//Paper
            }//First Row
            HStack{
            Button(action: {}){//Bold
                ZStack{
                    RoundedRectangle(cornerRadius: 20).frame(width: 120, height: 90).foregroundColor(BoldColor).shadow(radius: 0.5 )
                    VStack{
                        Text("Aa").font(.largeTitle).fontWeight(.bold)
                        Text("Bold").font(.subheadline)
                    }
                }
            }//Bold
                Button(action: {}){//Calm
                    ZStack{
                        RoundedRectangle(cornerRadius: 20).frame(width: 120, height: 90).foregroundColor(CalmColor).shadow(radius: 0.5 )
                        VStack{
                            Text("Aa").font(.custom("Palatino", size: 35))
                            Text("Calm").font(.custom("Palatino", size: 15))
                        }
                    }
                }//Calm
                Button(action: {}){//Focus
                    ZStack{
                        RoundedRectangle(cornerRadius: 20).frame(width: 120, height: 90).foregroundColor(FocusColor).shadow(radius: 0.5 )
                        VStack{
                            Text("Aa").font(.custom("Avenir Next", size: 35))
                            Text("Focus").font(.custom("Avenir Next", size: 15))
                        }.foregroundColor(FocusFontColor)
                    }
                }//Focus
            }//Second Row
        }
        Rectangle().foregroundColor(Color(red: 0.996, green: 0.976, blue: 0.924))
    }
    private var OriginalColor: Color{
        switch colorScheme{
        case .light:
            return Color(.white)
        case .dark:
            return Color(.black)
        @unknown default:
            return Color(red: 0.579, green: 0.152, blue: 0.152)
        }
        
    }
    private var QuietColor: Color{
        switch colorScheme{
        case .light:
            return Color(red: 0.29, green: 0.29, blue: 0.299)
        case .dark:
            return Color(.black)
        @unknown default:
            return /*@START_MENU_TOKEN@*/Color(red: 0.579, green: 0.152, blue: 0.152)/*@END_MENU_TOKEN@*/
        }
        
    }
    private var PaperColor: Color{
        switch colorScheme{
        case .light:
            return Color(red: 0.934, green: 0.929, blue: 0.929)
        case .dark:
            return Color(red: 0.11, green: 0.11, blue: 0.114)
        @unknown default:
            return Color(red: 0.579, green: 0.152, blue: 0.152)
        }
        
    }
    private var BoldColor: Color{
        switch colorScheme{
        case .light:
            return Color(.white)
        case .dark:
            return Color(.black)
        @unknown default:
            return Color(red: 0.579, green: 0.152, blue: 0.152)
        }
        
    }
    private var CalmColor: Color{
        switch colorScheme{
        case .light:
            return Color(red: 0.934, green: 0.885, blue: 0.799)
        case .dark:
            return Color(red: 0.25, green: 0.231, blue: 0.192)
        @unknown default:
            return Color(red: 0.579, green: 0.152, blue: 0.152)
        }
        
    }
    private var FocusColor: Color{
        switch colorScheme{
        case .light:
            return Color(red: 0.998, green: 0.988, blue: 0.962)
        case .dark:
            return Color(red: 0.091, green: 0.086, blue: 0.051)
        @unknown default:
            return Color(red: 0.579, green: 0.152, blue: 0.152)
        }
        
    }
    private var CalmFontColor: Color{
        switch colorScheme{
        case .light:
            return Color(red: 0.21, green: 0.175, blue: 0.145)
        case .dark:
            return Color(red: 0.091, green: 0.086, blue: 0.051)
        @unknown default:
            return Color(red: 0.579, green: 0.152, blue: 0.152)
        }
        
    }
    private var FocusFontColor: Color{
        switch colorScheme{
        case .light:
            return Color(red: 0.075, green: 0.07, blue: 0.005)
        case .dark:
            return Color(red: 0.996, green: 0.976, blue: 0.924)
        @unknown default:
            return Color(red: 0.579, green: 0.152, blue: 0.152)
        }
        
    }
        }

struct ThemeButton_Previews: PreviewProvider {
    static var previews: some View {
        ThemeButton()
    }
}
