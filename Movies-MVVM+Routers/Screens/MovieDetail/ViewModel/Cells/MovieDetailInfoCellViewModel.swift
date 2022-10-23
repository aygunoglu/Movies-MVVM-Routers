//
//  MovieDetailInfoCellViewModel.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 23.10.2022.
//

import Foundation

protocol MovieDetailInfoCellViewModelProtocol: MovieDetailBaseCellViewModelProtocol {
  var releaseText: String { get }
  var infoText: String { get }
}

class MovieDetailInfoCellViewModel: MovieDetailBaseCellViewModel, MovieDetailInfoCellViewModelProtocol {
  var releaseText: String
  var infoText: String
  
  init(releaseText: String, genreText: String, runtimeText: String) {
    self.releaseText = releaseText
    self.infoText = genreText + " | " + runtimeText
    super.init()
    self.cellType = .infoCell
  }
}
