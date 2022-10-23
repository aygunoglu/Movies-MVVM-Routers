//
//  MovieDetailMainViewModel.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 23.10.2022.
//

import Foundation

protocol MovieDetailMainViewModelProtocol {
  var startActivityIndicator: VoidHandler? { get set }
  var stopActivityIndicator: VoidHandler? { get set }
  var updateUI: VoidHandler? { get set }
  var imdbID: String { get set }
  
  var cellViewModels: [MovieDetailBaseCellViewModelProtocol] { get set }
}

class MovieDetailMainViewModel: MovieDetailMainViewModelProtocol {
  var startActivityIndicator: VoidHandler?
  var stopActivityIndicator: VoidHandler?
  var updateUI: VoidHandler?
  
  var cellViewModels: [MovieDetailBaseCellViewModelProtocol] = []
  var imdbID: String
  
  init(imdbID: String) {
    self.imdbID = imdbID
  }
}
