//
//  ContentView.swift
//  Avocados
//
//  Created by Amin Hoque on 17/7/23.
//

import SwiftUI

struct ContentView: View {
  var facts: [Fact] = factData
  var headers: [Header] = headerData
  var recipes: [Recipe] = recipeData

  var body: some View {
    ScrollView(.vertical, showsIndicators: false) {
      VStack(alignment: .center, spacing: 20) {
        // Header
        ScrollView(.horizontal, showsIndicators: false) {
          HStack(alignment: .top, spacing: 0) {
            ForEach(headers) { item in
              HeaderView(header: item)
            }
            
          }
        }

        // Dishes
        Text("Avocado Dishes")
          .fontWeight(.bold)
          .modifier(TitleModifer())
        DishesView()
          .frame(maxWidth: 640)

        Text("Avocado Facts")
          .fontWeight(.bold)
          .modifier(TitleModifer())

        ScrollView(.horizontal, showsIndicators: false) {
          HStack(alignment: .top, spacing: 60) {
            ForEach(facts) { item in
              FactsView(fact: item)
            }
          }
          .padding(.vertical)
          .padding(.leading, 60)
          .padding(.trailing, 20)
        }
        
        // Recipe Cards
        Text("Avocado Recipes")
          .fontWeight(.bold)
          .modifier(TitleModifer())
        
        VStack(alignment: .center, spacing: 20) {
          ForEach(recipes) { item in
            RecipeCardView(recipe: item)
          }
        }

        //Footer
        VStack(alignment: .center, spacing: 20) {
          Text("All about Avocados")
            .fontWeight(.bold)
            .modifier(TitleModifer())

          Text("Everything you wanted to know about Avocados & more...")
            .font(.system(.title, design: .serif))
            .multilineTextAlignment(.center)
            .foregroundColor(Color.gray)
            .frame(minHeight: 60)
        }
        .frame(maxWidth: 640)
        .padding()
        .padding(.bottom, 85)
      }
    }
    .edgesIgnoringSafeArea(.all)
    .padding(0)
  }
}

struct TitleModifer: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.system(.title, design: .serif))
      .foregroundColor(Color("ColorGreenAdaptive"))
      .padding(8)
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView(facts: factData, headers: headerData, recipes: recipeData)
//        .environment(\.colorScheme, .dark)
    }
}
