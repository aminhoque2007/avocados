//
//  AvocadosView.swift
//  Avocados
//
//  Created by Amin Hoque on 17/7/23.
//

import SwiftUI

struct AvocadosView: View {
  @State private var animate: Bool = false

  var description = """
Creamy, green, and full of nutrients! Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
"""
  var body: some View {
    VStack {
      Spacer()
      Image("avocado")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 240, height: 240, alignment: .center)
        .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 0)
        .scaleEffect(self.animate ? 1 : 0.9)
        .opacity(self.animate ? 1 : 0.9)
        .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
      VStack {
        Text("Avocados")
          .font(.system(size: 42, weight: .bold, design: .serif))
          .foregroundColor(.white)
          .padding()
          .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
        
        Text(description)
          .lineLimit(nil)
          .font(.system(.headline, design: .serif))
          .foregroundColor(Color("ColorGreenLight"))
          .multilineTextAlignment(.center)
          .lineSpacing(8)
          .frame(maxWidth: 640, minHeight: 120)
      }
      .padding()
      Spacer()
    }
    .background(
      Image("background")
        .resizable()
        .aspectRatio(contentMode: .fill)
    )
    .edgesIgnoringSafeArea(.all)
    .onAppear(perform: {
      self.animate.toggle()
    })
  }
}

struct AvocadosView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadosView()
        .environment(\.colorScheme, .dark)
    }
}
