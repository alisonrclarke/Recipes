//
//  Recipe.swift
//  Recipes
//
//  Created by Alison Clarke on 07/06/2019.
//  Copyright © 2019 Alison Clarke. All rights reserved.
//

import Foundation
import SwiftUI
import UIKit

struct Recipe: Identifiable {
    var id: Int
    var title : String
    var imageName : String
    func getImage(size: CGSize) -> Image {
        if let uiImage = UIImage(named: imageName) {
            let hScale = size.height / uiImage.size.height
            let wScale = size.width / uiImage.size.width
            let newHeight = uiImage.size.height * hScale
            let newWidth = uiImage.size.width * wScale
            UIGraphicsBeginImageContext(CGSize(width: newWidth, height: newHeight))
            uiImage.draw(in: CGRect(x: 0, y: 0, width: newWidth, height: newHeight))
            let newImage = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            
            return Image(uiImage: newImage ?? uiImage)
        }
        return Image("fetatart")
    }
}

class RecipeData {
    static func getRecipeData() -> [Recipe] {
        return [Recipe(id: 1, title: "Honey Puddings with Apple Syrup", imageName: "applepudding"),
                Recipe(id: 2, title: "Spiced Chocolate Orange Cake", imageName: "chocolatecake"),
                Recipe(id: 3, title: "Smoky Leek and Potato Hash", imageName: "leekpotatoasparagus")]
    }
}
