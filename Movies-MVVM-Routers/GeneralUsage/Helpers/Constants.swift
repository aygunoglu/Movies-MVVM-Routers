//
//  Constants.swift
//  Movies-MVVM-Routers
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
  
  // Firebase Log
  static let movieDetailLogKey = "movie_detail_info"
  static let movieTitle = "movie_title"
  static let movieReleaseDate = "movie_release_date"
  static let moviePosterURL = "movie_poster_url"
  static let movieGenres = "movie_genres"
  static let movieRuntime = "movie_runtime"
  
}
