//
//  RecipeModel.swift
//  Avocados
//
//  Created by Amin Hoque on 21/7/23.
//

import SwiftUI

struct Recipe: Identifiable {
  var id = UUID()
  var title: String
  var headline: String
  var image: String
  var rating: Int
  var serves: Int
  var preparation: Int
  var cooking: Int
  var instructions: [String]
  var ingredients: [String]
}
