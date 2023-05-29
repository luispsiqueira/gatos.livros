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
            ForEach(1...20, id:\.self){_ in
                NavigationLink {
                    StoreFilterView()
                } label:{
                    Text("\(Image(systemName: "text.justify.left"))").font(.title3).foregroundColor(.gray)
                    VStack{
                        HStack{
                            Text("Explore")
                            Spacer()
                            Text("\(Image(systemName: "chevron.forward"))").foregroundColor(.gray)
                        }
                        Divider()
                        
                    }
                   
                    
                }.padding(.horizontal)}
        }
        .listStyle(.plain)
        .navigationBarTitle(/*@START_MENU_TOKEN@*/"Title"/*@END_MENU_TOKEN@*/)
    }
}

struct StoreFilterView_Previews: PreviewProvider {
    static var previews: some View {
        StoreFilterView()
    }
}
