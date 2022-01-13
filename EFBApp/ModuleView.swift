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
    .foregroundColor(.white)
    .frame(maxWidth: .infinity)
    .background(
      LinearGradient(
        colors: [Color(#colorLiteral(red: 0.004859850742, green: 0.09608627111, blue: 0.5749928951, alpha: 1)), Color(#colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1))],
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
