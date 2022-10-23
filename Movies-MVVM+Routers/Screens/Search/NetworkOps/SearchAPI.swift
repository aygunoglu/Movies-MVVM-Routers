//
//  SearchAPI.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 22.10.2022.
//

import Moya

enum SearchAPIMethod {
  case getSearchResults(page: Int, searchText: String)
  case getMovieDetail(imdbID: String)
}

struct SearchAPI {
  var id = UUID()
  let apiMethod: SearchAPIMethod
}

extension SearchAPI: TargetType {
  var baseURL: URL {
    return URL(string: Constants.omdbBaseURL)!
  }
  
  var method: Moya.Method {
    switch apiMethod {
    default: return .get
    }
  }
  
  var path: String {
    return ""
  }
  
  var task: Task {
    var params: [String: Any] = [:]
    params[Keys.apiKey.rawValue] = Constants.apiKey
    
    switch apiMethod {
    case .getSearchResults(let page, let searchText):
      params[Keys.searchText.rawValue] = searchText
      params[Keys.page.rawValue] = page
      params[Keys.contentType.rawValue] = "movie"
      return .requestParameters(parameters: params, encoding: URLEncoding.default)
    case .getMovieDetail(let imdbID):
      params[Keys.detailID.rawValue] = imdbID
      return .requestParameters(parameters: params, encoding: URLEncoding.default)
    }
  }
  
  var headers: [String : String]? {
    return ["Content-Type" : "application/json"]
  }
}

extension SearchAPI {
  private enum Keys: String {
    //General
    case apiKey = "apiKey"
    //Search
    case searchText = "s"
    case page = "page"
    case contentType = "type"
    //Detail
    case detailID = "i"
  }
}
