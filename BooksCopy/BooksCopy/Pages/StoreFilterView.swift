//
//  StoreFilterView.swift
//  BooksCopy
//
//  Created by Samuel da Fonseca Martins on 24/05/23.
//

import SwiftUI

struct StoreFilterView: View {
    var body: some View {
        ScrollView{
            Divider()
            ForEach(1...5, id:\.self){_ in
                NavigationLink {
                    StoreFilterView()
                } label:{
                    
                    Text("\(Image(systemName: "questionmark.app.fill"))").font(.title3).foregroundColor(.gray)
                    VStack{
                        HStack{
                            Text("Section")
                            Spacer()
                            Text("\(Image(systemName: "chevron.forward"))").foregroundColor(.gray)
                        }.padding(.vertical,8)
                        Divider()
                        
                    }
                   
                    
                }.padding(.horizontal)}
        }
        .listStyle(.plain)
        .navigationBarTitle("Browse Sections")
    }
}

struct StoreFilterView_Previews: PreviewProvider {
    static var previews: some View {
        StoreFilterView()
    }
}
