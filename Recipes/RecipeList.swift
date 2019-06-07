//
//  RecipeList.swift
//  Recipes
//
//  Created by Alison Clarke on 07/06/2019.
//  Copyright © 2019 Alison Clarke. All rights reserved.
//

import SwiftUI

struct RecipeList : View {
    var body: some View {
        List(RecipeData.getRecipeData()) { recipe in
            RecipeRow(recipe: recipe)
        }
    }
}

#if DEBUG
struct RecipeList_Previews : PreviewProvider {
    static var previews: some View {
        RecipeList()
    }
}
#endif
