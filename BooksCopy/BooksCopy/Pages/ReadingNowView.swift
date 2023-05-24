//
//  ReadingNowView.swift
//  BooksCopy
//
//  Created by Luis Silva on 23/05/23.
//

import SwiftUI

struct ReadingNowView: View {
    var body: some View {
        NavigationView{
            ScrollView {
                VStack(spacing: 16) {
                    List {
                        Text("Item")
                        Text("Item")
                        Text("Item")
                            
                    }
                    .navigationTitle("Reading Now")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .frame(width: 358, height: 230)
                    .background(.red)
                    
                    
                    List{
                        Text("opa")
                    }
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .frame(width: 358, height: 100)
                    .background(.red)
                }
            }
            .frame(height:700)
        }
    }
}

struct ReadingNowView_Previews: PreviewProvider {
    static var previews: some View {
        ReadingNowView()
    }
}

