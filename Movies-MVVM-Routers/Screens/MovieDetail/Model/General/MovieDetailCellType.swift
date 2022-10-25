//
//  MovieDetailCellType.swift
//  Movies-MVVM-Routers
//
//  Created by Hasan Aygünoglu on 23.10.2022.
//

import Foundation

enum MovieDetailCellType: String, CaseIterable {
  case posterCell
  case titleCell
  case infoCell
  case plotCell
  
  var identifier: String {
    switch self {
    case .posterCell:
      return Constants.movieDetailPosterCellIdentifier
    case .titleCell:
      return Constants.movieDetailTitleCellIdentifier
    case .infoCell:
      return Constants.movieDetailInfoCellIdentifier
    case .plotCell:
      return Constants.movieDetailPlotCellIdentifier
    }
  }
}
