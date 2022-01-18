//
//  ModuleView.swift
//  EFBApp
//
//  Created by Guillaume Ramey on 10/01/2022.
//

import SwiftUI
import EFBToolKit

struct ModuleView: View {

  let module: EFBModule

  var body: some View {
    HStack {
      Image(systemName: module.icon)
        .font(.largeTitle)
        .padding(.leading, 5)
        .padding()

      VStack(alignment: .leading, spacing: 10) {
        Text(module.title)
          .font(.title)
          .fontWeight(.semibold)
        Text(module.subtitle)
      }
      .padding(.vertical, 20)

      Spacer()
    }
    .foregroundColor(.secondary)
    .frame(maxWidth: .infinity)
    .background(
      LinearGradient(
        colors: [Color(#colorLiteral(red: 0.1298420429, green: 0.1298461258, blue: 0.1298439503, alpha: 1)), Color(#colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 1))],
        startPoint: .leading,
        endPoint: .trailing)
    )
    .cornerRadius(20)
    .padding(.horizontal)
  }
}

struct ModuleView_Previews: PreviewProvider {

  static var previews: some View {
    ModuleView(module: MockModule.mockPlane)
  }
}
