//
//  MockModule.swift
//  EFBApp
//
//  Created by Guillaume Ramey on 13/01/2022.
//

import Foundation
import EFBToolKit

struct MockModule: EFBModule {
  var icon: String
  var title: String
  var subtitle: String

  static let mockPlane = MockModule(icon: "airplane", title: "Plane", subtitle: "Informations about your plane.")
}
