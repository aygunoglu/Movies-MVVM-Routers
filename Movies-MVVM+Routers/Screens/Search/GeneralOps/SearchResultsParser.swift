//
//  SearchResultsParser.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 23.10.2022.
//

import Foundation

protocol SearchResultsParserProtocol {
  func parseDataSource(from responseModel: SearchResponseModel, paginationType: PaginationType) throws -> [SearchBaseCellViewModelProtocol]
}

class SearchResultsParser: SearchResultsParserProtocol {
  func parseDataSource(from responseModel: SearchResponseModel, paginationType: PaginationType) throws -> [SearchBaseCellViewModelProtocol] {
    var parsedViewModels: [SearchBaseCellViewModelProtocol] = []
    try responseModel.results.forEach { resultItem in
      parsedViewModels.append(try createResultCellViewModel(resultItem: resultItem))
    }
    if responseModel.results.count == Constants.requestItemLimit {
      parsedViewModels.append(createPlaceholderCellViewModel())
    }
    return parsedViewModels
  }
  
  private func createResultCellViewModel(resultItem: SearchItem) throws -> SearchResultCellViewModelProtocol {
    let titleText = resultItem.title
    let releaseText = resultItem.year
    let imageURL = resultItem.poster
    return SearchResultCellViewModel(titleText: titleText, releaseText: releaseText, imageURL: imageURL)
  }
  
  private func createPlaceholderCellViewModel() -> SearchPlaceholderCellViewModelProtocol {
    let placeholderCellViewModel = SearchPlaceholderCellViewModel()
    placeholderCellViewModel.cellType = .placeholderCell
    return placeholderCellViewModel
  }
}
