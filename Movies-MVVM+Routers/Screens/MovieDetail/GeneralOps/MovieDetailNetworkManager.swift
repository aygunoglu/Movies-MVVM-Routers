//
//  MovieDetailNetworkManager.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 23.10.2022.
//

import Foundation

protocol MovieDetailNetworkManagerProtocol: BaseNetworkManagerProtocol {}

class MovieDetailNetworkManager: MovieDetailNetworkManagerProtocol {
  private var viewModel: MovieDetailMainViewModelProtocol
  private var parser: MovieDetailParserProtocol
  private var requestPage = 1
  
  init(viewModel: MovieDetailMainViewModelProtocol, parser: MovieDetailParserProtocol) {
    self.viewModel = viewModel
    self.parser = parser
  }
  
  func requestPage(for paginationType: PaginationType) {
    if paginationType == .initial { viewModel.startActivityIndicator?() }
    
    guard let apiMethod = getAPIMethod() else { return }
    let target = SearchAPI(apiMethod: apiMethod)
    SearchAPIProvider.apiProvider.request(target) { [weak self] result in
      guard let self = self else { return }
      DispatchQueue.global(qos: .userInitiated).async {
        switch result {
        case .success(let response):
          do {
            let mappedData = try JSONDecoder().decode(MovieDetailResponseModel.self, from: response.data)
            self.handleResult(mappedData)
          } catch let error {
            print(error)
          }
        case .failure(let error):
          print(error)
        }
      }
    }
  }
  
  private func handleResult(_ responseModel: MovieDetailResponseModel) {
    do {
      viewModel.cellViewModels = try parser.parseDataSource(from: responseModel)
      print(viewModel.cellViewModels)
      viewModel.updateUI?()
    } catch let error {
      print(error)
    }
  }
  
  private func getAPIMethod() -> SearchAPIMethod? {
    return SearchAPIMethod.getMovieDetail(imdbID: viewModel.imdbID)
  }
}


