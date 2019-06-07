//
//  ContentView.swift
//  Recipes
//
//  Created by Alison Clarke on 04/06/2019.
//  Copyright © 2019 Alison Clarke. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        VStack {
            Image("fetatart")
                .resizable(capInsets: .init(), resizingMode: .stretch)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 400)
            
            CircleText()
                .offset(y: -130)
                .frame(height: 200)
                .padding(.bottom, -130)
                
            RecipeList()
                
            .padding()
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
