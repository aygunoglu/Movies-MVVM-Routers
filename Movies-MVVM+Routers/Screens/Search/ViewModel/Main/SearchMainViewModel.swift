//
//  SearchMainViewModel.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 22.10.2022.
//

import Foundation

protocol SearchMainViewModelProtocol {
  var startActivityIndicator: VoidHandler? { get set }
  var stopActivityIndicator: VoidHandler? { get set }
  var cellViewModels: [SearchBaseCellViewModelProtocol] { get set }
  var updateUI: VoidHandler? { get set }
  var showEmptyState: VoidHandler? { get set }
}

class SearchMainViewModel: SearchMainViewModelProtocol {
  var startActivityIndicator: VoidHandler?
  var stopActivityIndicator: VoidHandler?
  var updateUI: VoidHandler?
  var showEmptyState: VoidHandler?
  
  var cellViewModels: [SearchBaseCellViewModelProtocol] = []
  
  init() {
    
  }
}
