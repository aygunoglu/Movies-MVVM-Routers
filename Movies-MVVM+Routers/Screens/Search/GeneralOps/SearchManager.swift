//
//  SearchManager.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 23.10.2022.
//

import Foundation

protocol SearchManagerProtocol {
  var viewModel: SearchMainViewModelProtocol { get set }
  var resultsParser: SearchResultsParserProtocol { get set }
  var dataSource: SearchDataSource { get set }
  var router: SearchRouterProtocol { get set }
  var networkManager: SearchNetworkManagerProtocol { get set }
}

class SearchManager: SearchManagerProtocol {
  lazy var viewModel: SearchMainViewModelProtocol = {
    return SearchMainViewModel()
  }()
  
  lazy var resultsParser: SearchResultsParserProtocol = {
    return SearchResultsParser()
  }()
  
  lazy var dataSource: SearchDataSource = {
    return SearchDataSource(viewModel: viewModel, router: router)
  }()
  
  lazy var router: SearchRouterProtocol = {
    return SearchRouter()
  }()
  
  lazy var networkManager: SearchNetworkManagerProtocol = {
    return SearchNetworkManager(viewModel: viewModel, parser: resultsParser)
  }()
}
