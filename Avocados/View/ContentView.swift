//
//  ContentView.swift
//  Avocados
//
//  Created by Nic Deane on 1/10/21.
//

import SwiftUI

struct ContentView: View {
  
  var headers: [Header] = headersData
  var facts: [Fact] = factsData
  var recipes: [Recipe] = recipesData
  
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
          .modifier(TitleModifier())
        
        DishesView()
          .frame(maxWidth: 640) // makes it look good on ipad too by restricting max width
        
        // Facts
        Text("Avocado Facts")
          .fontWeight(.bold)
          .modifier(TitleModifier())
        
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
          .modifier(TitleModifier())
        
        VStack(alignment: .center, spacing: 20) {
          ForEach(recipes) { item in
            RecipeCardView(recipe: item)
          }
        }
        .frame(maxWidth: 640)
        .padding(.horizontal)
        
        // Footer
        VStack(alignment: .center, spacing: 20) {
          Text("All About Avocados")
            .fontWeight(.bold)
            .modifier(TitleModifier())
          
          Text("Everything you wanted to know about avocados but were too afraid to ask.")
            .font(.system(.body, design: .serif))
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

struct TitleModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.system(.title, design: .serif))
      .foregroundColor(Color("ColorGreenAdaptive"))
      .padding(8)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(headers: headersData, facts: factsData, recipes: recipesData)
  }
}
