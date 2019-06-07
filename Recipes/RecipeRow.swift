//
//  RecipeRow.swift
//  Recipes
//
//  Created by Alison Clarke on 07/06/2019.
//  Copyright © 2019 Alison Clarke. All rights reserved.
//

import SwiftUI

struct RecipeRow : View {
    var recipe: Recipe
    
    var body: some View {
        HStack {
            recipe.getImage(size: CGSize(width: 50, height: 50)).frame(height: 200)
            Text(recipe.title)
        }
        .frame(height: 70)
    }
}

#if DEBUG
struct RecipeRow_Previews : PreviewProvider {
    static var previews: some View {
        RecipeRow(recipe: RecipeData.getRecipeData()[0])
    }
}
#endif
