//
//  NewTag.swift
//  BooksCopy
//
//  Created by Caio Melloni dos Santos on 26/05/23.
//

import SwiftUI

struct NewTag: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20).frame(width: 40, height: 20).foregroundColor(Color(red: 0.039, green: 0.279, blue: 0.556))
            Text("NEW").font(.system(size: 12)).foregroundColor(.white).bold()
            
        }
    }
}

struct NewTag_Previews: PreviewProvider {
    static var previews: some View {
        NewTag()
    }
}
