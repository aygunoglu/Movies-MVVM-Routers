//
//  MovieDetailTitleCellViewModel.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 23.10.2022.
//

import Foundation

protocol MovieDetailTitleCellViewModelProtocol: MovieDetailBaseCellViewModelProtocol {
  var titleText: String { get }
}

class MovieDetailTitleCellViewModel: MovieDetailBaseCellViewModel, MovieDetailTitleCellViewModelProtocol {
  var titleText: String
  
  init(titleText: String) {
    self.titleText = titleText
    super.init()
    self.cellType = .titleCell
  }
}
