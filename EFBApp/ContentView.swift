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
    NavigationView {
      ZStack {
        LinearGradient(
          colors: [Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)), Color(#colorLiteral(red: 0.4620226622, green: 0.8382837176, blue: 1, alpha: 1))],
          startPoint: .topLeading,
          endPoint: .bottomTrailing)
          .ignoresSafeArea()

        ScrollView {
          Text("Welcome back John")
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding(.vertical)

          NavigationLink {
            MapView()
          } label: {
            ModuleView(module: module1)
          }

          NavigationLink {
            WeatherView()
          } label: {
            ModuleView(module: module2)
          }

          ModuleView(module: MockModule.mockPlane)
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
          ToolbarItem(placement: .navigationBarLeading) {
            Image(systemName: "person.circle")
          }
          ToolbarItem(placement: .navigationBarTrailing) {
            Image(systemName: "slider.horizontal.3")
          }
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
