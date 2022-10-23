//
//  Constants.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 22.10.2022.
//

import Foundation

struct Constants {
  static let omdbBaseURL = "https://www.omdbapi.com/"
  static let requestItemLimit = 10
  static let apiKey = "a08f654f"
  
  static let splashVCNavigationTitle = "Welcome"
  static let searchVCNavigationTitle = "Search"
  
  static let searchBarPlaceholderText = "Type at least two letters"
  static let emptyStateMessage = "No results."
  
  static let searchResultCellIdentifier = "SearchResultCell"
  static let searchPlaceholderCellIdentifier = "SearchPlaceholderCell"
  
  static let movieDetailPosterCellIdentifier = "MovieDetailPosterCell"
  static let movieDetailTitleCellIdentifier = "MovieDetailTitleCell"
  static let movieDetailInfoCellIdentifier = "MovieDetailInfoCell"
  static let movieDetailPlotCellIdentifier = "MovieDetailPlotCell"
}
