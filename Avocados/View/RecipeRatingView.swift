//
//  RecipeRatingView.swift
//  Avocados
//
//  Created by Amin Hoque on 21/7/23.
//

import SwiftUI

struct RecipeRatingView: View {
  var recipe: Recipe

  var body: some View {
    HStack(alignment: .center, spacing: 5) {
      ForEach(1...(recipe.rating), id: \.self) { _ in
        Image(systemName: "star.fill")
          .font(.body)
        .foregroundColor(Color.yellow)
      }
    }
  }
}

struct RecipeRatingView_Previews: PreviewProvider {
  static var previews: some View {
    RecipeRatingView(recipe: recipeData[0])
  }
}
