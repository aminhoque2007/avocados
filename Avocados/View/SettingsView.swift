//
//  SettingsView.swift
//  Avocados
//
//  Created by Amin Hoque on 17/7/23.
//

import SwiftUI

struct SettingsView: View {
  @State private var backgroundRefresh: Bool = true
  @State private var enableNotification: Bool = true

  var body: some View {
    VStack(alignment: .center, spacing: 0) {
      VStack(alignment: .center, spacing: 5) {
        Image("avocado")
          .resizable()
          .scaledToFit()
          .padding(.top)
          .frame(width: 100, height: 100, alignment: .center)
          .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
        
        Text("Avocados".uppercased())
          .font(.system(.title, design: .serif))
          .fontWeight(.bold)
          .foregroundColor(Color("ColorGreenAdaptive"))
      }
      .padding()
      
      Form {
        Section(header: Text("General Settings")) {
          Toggle(isOn: $enableNotification) {
            Text("Enable notification")
          }
          
          Toggle(isOn: $backgroundRefresh) {
            Text("Background refresh")
          }
        }
        
        Section(header: Text("Application")) {
          if enableNotification {
            HStack {
              Text("Product")
                .foregroundColor(Color.gray)
              Spacer()
              Text("Avocado Recipes")
            }
            
            HStack {
              Text("Version")
                .foregroundColor(Color.gray)
              Spacer()
              Text("1.0.0")
            }
            
            HStack {
              Text("Developer")
                .foregroundColor(Color.gray)
              Spacer()
              Text("Amin Hoque")
            }
            
            HStack {
              Text("Compatibility")
                .foregroundColor(Color.gray)
              Spacer()
              Text("Iphone 13 +")
            }
          } else {
            HStack {
              Text("Message")
                .foregroundColor(Color.gray)
              Spacer()
              Text("❤️")
            }
          }
          
          
        }
      }
    }
//    .frame(width: 640)
  }
}

struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
      SettingsView()
  }
}
