//
//  SearchResultCellViewModel.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 22.10.2022.
//

import UIKit

protocol SearchResultCellViewModelProtocol: SearchBaseCellViewModelProtocol {
  var backgroundColor: UIColor { get }
  var titleText: String { get }
  var releaseText: String { get }
  var imageURL: String { get }
  var imdbID: String { get }
}

class SearchResultCellViewModel: SearchBaseCellViewModel, SearchResultCellViewModelProtocol {
  var backgroundColor: UIColor = .systemGray4
  var titleText: String
  var releaseText: String
  var imageURL: String
  var imdbID: String
  
  init(titleText: String, releaseText: String, imageURL: String, imdbID: String) {
    self.titleText = titleText
    self.releaseText = releaseText
    self.imageURL = imageURL
    self.imdbID = imdbID
    super.init()
    self.cellType = .resultsCell
  }
}
