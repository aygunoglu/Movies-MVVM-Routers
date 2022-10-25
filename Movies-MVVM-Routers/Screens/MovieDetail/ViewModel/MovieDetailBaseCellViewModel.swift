//
//  MovieDetailBaseCellViewModel.swift
//  Movies-MVVM-Routers
//
//  Created by Hasan Aygünoglu on 23.10.2022.
//

import Foundation

protocol MovieDetailBaseCellViewModelProtocol {
  var cellType: MovieDetailCellType { get }
}

class MovieDetailBaseCellViewModel: MovieDetailBaseCellViewModelProtocol {
  var cellType: MovieDetailCellType = .plotCell
}
