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
            RoundedRectangle(cornerRadius: 20).frame(width: 55, height: 25).foregroundColor(.blue).opacity(0.5)
            Text("NEW").fontWeight(.medium).foregroundColor(.white)
            
        }
    }
}

struct NewTag_Previews: PreviewProvider {
    static var previews: some View {
        NewTag()
    }
}
