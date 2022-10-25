//
//  ViewControllerMaker.swift
//  Movies-MVVM-Routers
//
//  Created by Hasan Aygünoglu on 22.10.2022.
//

import Foundation

class ViewControllerMaker {}

extension ViewControllerMaker {
  static func splashViewController() -> SplashViewController {
    let viewModel = SplashMainViewModel()
    return SplashViewController(viewModel: viewModel)
  }
  
  static func searchViewController() -> SearchViewController {
    let manager = SearchManager()
    return SearchViewController(manager: manager)
  }
  
  static func movieDetailViewController(imdbID: String) -> MovieDetailViewController {
    let manager = MovieDetailManager(imdbID: imdbID)
    return MovieDetailViewController(manager: manager)
  }
}
