//
//  MovieDetailPlotCellViewModel.swift
//  Movies-MVVM-Routers
//
//  Created by Hasan Aygünoglu on 23.10.2022.
//

import Foundation

protocol MovieDetailPlotCellViewModelProtocol: MovieDetailBaseCellViewModelProtocol {
  var plotText: String { get }
}

class MovieDetailPlotCellViewModel: MovieDetailBaseCellViewModel, MovieDetailPlotCellViewModelProtocol {
  var plotText: String
  
  init(plotText: String) {
    self.plotText = plotText
    super.init()
    self.cellType = .plotCell
  }
}
