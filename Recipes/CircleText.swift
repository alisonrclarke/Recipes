//
//  CircleImage.swift
//  Recipes
//
//  Created by Alison Clarke on 04/06/2019.
//  Copyright © 2019 Alison Clarke. All rights reserved.
//

import SwiftUI

struct CircleText : View {
    var body: some View {
        Circle()
            .fill(Color.white)
            .shadow(radius: 10)
            .overlay(
                VStack(alignment: .center) {
                    Text("AliMentum").font(.title)
                    Text("Veggie Family Food").font(.subheadline)
                })
        
        
    }
}

#if DEBUG
struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        CircleText()
    }
}
#endif
