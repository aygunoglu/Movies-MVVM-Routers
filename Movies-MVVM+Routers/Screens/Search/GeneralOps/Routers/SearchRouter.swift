//
//  SearchRouter.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 22.10.2022.
//

import Foundation

protocol SearchRouterProtocol: BaseRouterProtocol {
  func goToDetailVC(with imdbID: String)
}

class SearchRouter: BaseRouter, SearchRouterProtocol {
  func goToDetailVC(with imdbID: String) {
    let movieDetailVC = ViewControllerMaker.movieDetailViewController(imdbID: imdbID)
    pushViewController?(movieDetailVC)
  }
}
