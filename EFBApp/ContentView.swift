//
//  ContentView.swift
//  EFBApp
//
//  Created by Guillaume Ramey on 10/01/2022.
//

import SwiftUI
import EFBModule1
import EFBModule2

struct ContentView: View {

  let module1 = EFBModule1()
  let module2 = EFBModule2()

  var body: some View {
    TabView {
      MapView()
        .tabItem {
          HStack {
            Image(systemName: module1.icon)
            Text(module1.title)
          }
        }

      WeatherView()
        .tabItem {
          HStack {
            Image(systemName: module2.icon)
            Text(module2.title)
          }
        }

      Text("")
        .tabItem {
          HStack {
            Image(systemName: "text.badge.checkmark")
            Text("Checklist")
          }
        }

      Text("")
        .tabItem {
          HStack {
            Image(systemName: "airplane")
            Text("Arcraft")
          }
        }

      Text("")
        .tabItem {
          HStack {
            Image(systemName: "tray.and.arrow.down")
            Text("Downloads")
          }
        }
    }
    .accentColor(.primary)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
