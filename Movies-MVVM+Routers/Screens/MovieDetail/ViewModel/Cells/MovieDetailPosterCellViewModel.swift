//
//  MovieDetailPosterCellViewModel.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 23.10.2022.
//

import Foundation

protocol MovieDetailPosterCellViewModelProtocol: MovieDetailBaseCellViewModelProtocol {
  var imageURL: String { get }
}

class MovieDetailPosterCellViewModel: MovieDetailBaseCellViewModel, MovieDetailPosterCellViewModelProtocol {
  var imageURL: String
  
  init(imageURL: String) {
    self.imageURL = imageURL
    super.init()
    self.cellType = .posterCell
  }
}
