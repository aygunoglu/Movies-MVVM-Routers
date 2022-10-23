//
//  MovieDetailManager.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 23.10.2022.
//

import Foundation

protocol MovieDetailManagerProtocol {
  var viewModel: MovieDetailMainViewModelProtocol { get set }
  var parser: MovieDetailParserProtocol { get set }
  var dataSource: MovieDetailDataSource { get set }

  var networkManager: MovieDetailNetworkManager { get set }
}

class MovieDetailManager: MovieDetailManagerProtocol {
  let imdbID: String
  
  init(imdbID: String) {
    self.imdbID = imdbID
  }
  
  lazy var viewModel: MovieDetailMainViewModelProtocol = {
    MovieDetailMainViewModel(imdbID: imdbID)
  }()
  
  lazy var parser: MovieDetailParserProtocol = {
    MovieDetailParser()
  }()
  
  lazy var dataSource: MovieDetailDataSource = {
    MovieDetailDataSource(viewModel: viewModel)
  }()
  
  lazy var networkManager: MovieDetailNetworkManager = {
    MovieDetailNetworkManager(viewModel: viewModel, parser: parser)
  }()
}
