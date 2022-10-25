//
//  SearchNetworkManager.swift
//  Movies-MVVM-Routers
//
//  Created by Hasan Aygünoglu on 23.10.2022.
//

import Foundation

protocol SearchNetworkManagerProtocol: BaseNetworkManagerProtocol {}

class SearchNetworkManager: SearchNetworkManagerProtocol {
  private var viewModel: SearchMainViewModelProtocol
  private var parser: SearchResultsParserProtocol
  private var requestPage = 1
  
  init(viewModel: SearchMainViewModelProtocol, parser: SearchResultsParserProtocol) {
    self.viewModel = viewModel
    self.parser = parser
  }
  
  func requestPage(for paginationType: PaginationType) {
    if paginationType == .initial { viewModel.startActivityIndicator?() }
    
    let pageNumber = getPageNumber(paginationType: paginationType)
    guard let apiMethod = getAPIMethod(pageNumber: pageNumber) else { return }
    let target = SearchAPI(apiMethod: apiMethod)
    
    SearchAPIProvider.apiProvider.request(target) { [weak self] result in
      guard let self = self else { return }
      DispatchQueue.global(qos: .userInitiated).async {
        switch result {
        case .success(let response):
          do {
            let mappedData = try JSONDecoder().decode(SearchResponseModel.self, from: response.data)
            self.handleResponse(for: paginationType, mappedData)
          } catch let error {
            self.viewModel.cellViewModels = []
            self.viewModel.showEmptyState?()
          }
        case .failure(let error):
          print(error)
        }
      }
    }
    
  }
  
  private func handleResponse(for paginationType: PaginationType, _ responseModel: SearchResponseModel) {
    switch paginationType {
    case .initial:
      do {
        requestPage = 1
        viewModel.cellViewModels = try parser.parseDataSource(from: responseModel, paginationType: .initial)
        if viewModel.cellViewModels.isEmpty { viewModel.showEmptyState?() } else { viewModel.updateUI?() }
      } catch let error {
        print(error)
      }
    case .next:
      do {
        viewModel.cellViewModels.removeLast()
        
        let newPageViewModels = try parser.parseDataSource(from: responseModel, paginationType: .initial)
        viewModel.cellViewModels.append(contentsOf: newPageViewModels)
        viewModel.updateUI?()
      } catch let error {
        print(error)
      }
    }
  }
  
  private func getPageNumber(paginationType: PaginationType) -> Int {
    switch paginationType {
    case .initial:
      requestPage = 1
    case .next:
      requestPage += 1
    }
    return requestPage
  }
  
  private func getAPIMethod(pageNumber: Int) -> SearchAPIMethod? {
    return SearchAPIMethod.getSearchResults(page: pageNumber, searchText: viewModel.searchText)
  }
}

