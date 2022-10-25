//
//  SearchCellType.swift
//  Movies-MVVM-Routers
//
//  Created by Hasan Aygünoglu on 22.10.2022.
//

import Foundation

enum SearchCellType: CaseIterable {
  case resultsCell
  case placeholderCell
  
  var identifier: String {
    switch self {
    case .resultsCell:
      return Constants.searchResultCellIdentifier
    case .placeholderCell:
      return Constants.searchPlaceholderCellIdentifier
    }
  }
}
