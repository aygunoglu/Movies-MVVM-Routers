//
//  RemoteConfigModel.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 22.10.2022.
//

import Foundation

enum RemoteConfigModel {
  case textString
  case textFont
  
  var key: String {
    switch self {
    case .textString:
      return "text_string"
    case .textFont:
      return "text_font"
    }
  }
  
  var defaultValue: NSObject {
    switch self {
    case .textString:
      return "Loading" as NSObject
    case .textFont:
      return 25 as NSObject
    }
  }
}
