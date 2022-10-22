//
//  SearchBaseCellViewModel.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 22.10.2022.
//

import Foundation

protocol SearchBaseCellViewModelProtocol {
  var cellType: SearchCellType { get }
}

class SearchBaseCellViewModel: SearchBaseCellViewModelProtocol {
  var cellType: SearchCellType = .resultsCell
}
