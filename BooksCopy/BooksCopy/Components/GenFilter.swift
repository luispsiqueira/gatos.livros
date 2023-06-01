//
//  GenFilter.swift
//  BooksCopy
//
//  Created by Samuel da Fonseca Martins on 30/05/23.
//

import SwiftUI

struct GenFilter: View {
    var body: some View {
        VStack(alignment: .leading){
            
            Text("Genres").font(.custom("Georgia-Bold", size: 20)).padding(.top)
            Divider()
            
            VStack{
                HStack{
                    Text("\(Image(systemName: "magnifyingglass"))").font(.title3).fontWeight(.bold).foregroundColor(.gray)
                    Text("Crime & Thrillers")
                    Spacer()
                    Text("\(Image(systemName: "chevron.forward"))").foregroundColor(.gray)
                }.padding(.vertical,8)
                Divider()
                HStack{
                    Text("\(Image(systemName: "person.bust.fill"))").font(.title3).foregroundColor(.gray)
                    Text("Biography")
                    Spacer()
                    Text("\(Image(systemName: "chevron.forward"))").foregroundColor(.gray)
                }.padding(.vertical,8)
                Divider()
                HStack{
                    Text("\(Image(systemName: "moon.fill"))").font(.title3).foregroundColor(.gray)
                    Text("Fiction & Literature")
                    Spacer()
                    Text("\(Image(systemName: "chevron.forward"))").foregroundColor(.gray)
                }.padding(.vertical,8)
                Divider()
                HStack{
                    Text("\(Image(systemName: "brazilianrealsign"))").font(.title3).foregroundColor(.gray)
                    Text("Non-Fiction")
                    Spacer()
                    Text("\(Image(systemName: "chevron.forward"))").foregroundColor(.gray)
                }.padding(.vertical,8)
                Divider()
                HStack{
                    Text("\(Image(systemName: "heart.fill"))").font(.title3).foregroundColor(.gray)
                    Text("Romance")
                    Spacer()
                    Text("\(Image(systemName: "chevron.forward"))").foregroundColor(.gray)
                }.padding(.vertical,8)
                
                
            }
        }.padding(.horizontal,32)
    }
}

struct GenFilter_Previews: PreviewProvider {
    static var previews: some View {
        GenFilter()
    }
}
