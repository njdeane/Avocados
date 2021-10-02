//
//  SettingsView.swift
//  Avocados
//
//  Created by Nic Deane on 1/10/21.
//

import SwiftUI

struct SettingsView: View {
  
  @State private var enableNotification: Bool = true
  @State private var backgroungRefresh: Bool = false
  
  var body: some View {
    VStack(alignment: .center, spacing: 0) {
      // Header:
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
        // Section #1
        Section(header: Text("General Settings")) {
          Toggle(isOn: $enableNotification) {
            Text("Enable Notifications")
          }
          Toggle(isOn: $backgroungRefresh) {
            Text("Background Refresh")
          }
        }
        
        // Section #2
        Section(header: Text("Application")) {
          if enableNotification {
            HStack {
              Text("Product")
                .foregroundColor(Color.gray)
              Spacer()
              Text("Avocado Recipes")
            }
            HStack {
              Text("Compatibility")
                .foregroundColor(Color.gray)
              Spacer()
              Text("iPhone & iPad")
            }
            HStack {
              Text("Developer")
                .foregroundColor(Color.gray)
              Spacer()
              Text("Pirates Inc")
            }
            HStack {
              Text("Designer")
                .foregroundColor(Color.gray)
              Spacer()
              Text("BlackBeard")
            }
            HStack {
              Text("Website")
                .foregroundColor(Color.gray)
              Spacer()
              Text("www.catsthatlooklikehitler.com")
            }
            HStack {
              Text("Version")
                .foregroundColor(Color.gray)
              Spacer()
              Text("1.0.0")
            }
          } else {
            HStack {
              Text("🏴‍☠️")
                .foregroundColor(Color.gray)
                Spacer()
                Text("Pirates are cooler than cool... but only the nice pirates ♥︎")
                .font(.footnote)
            }
          }
          
        }
      }
    }
    .frame(maxWidth: 640)
  }
}

struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsView()
  }
}
