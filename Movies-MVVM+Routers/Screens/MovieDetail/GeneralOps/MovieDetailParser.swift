//
//  MovieDetailParser.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 23.10.2022.
//

import Foundation

protocol MovieDetailParserProtocol {
  func parseDataSource(from model: MovieDetailResponseModel) throws -> [MovieDetailBaseCellViewModelProtocol]
}

class MovieDetailParser: MovieDetailParserProtocol {
  func parseDataSource(from model: MovieDetailResponseModel) throws -> [MovieDetailBaseCellViewModelProtocol] {
    var parsedViewModels: [MovieDetailBaseCellViewModelProtocol] = []
    parsedViewModels.append(try createPosterCellViewModel(from: model))
    parsedViewModels.append(try createTitleCellViewModel(from: model))
    parsedViewModels.append(try createInfoCellViewModel(from: model))
    parsedViewModels.append(try createPlotCellViewModel(from: model))
    return parsedViewModels
  }
  
  private func createTitleCellViewModel(from model: MovieDetailResponseModel) throws -> MovieDetailTitleCellViewModelProtocol {
    return MovieDetailTitleCellViewModel(titleText: model.title)
  }
  
  private func createPosterCellViewModel(from model: MovieDetailResponseModel) throws -> MovieDetailPosterCellViewModelProtocol {
    let imageURL = model.poster
    let largerImageURL = String(imageURL.dropLast(9) + "SX500.jpg")
    return MovieDetailPosterCellViewModel(imageURL: largerImageURL)
  }
  
  private func createInfoCellViewModel(from model: MovieDetailResponseModel) throws -> MovieDetailInfoCellViewModelProtocol {
    return MovieDetailInfoCellViewModel(releaseText: model.released, genreText: model.genre, runtimeText: model.runtime)
  }
  
  private func createPlotCellViewModel(from model: MovieDetailResponseModel) throws -> MovieDetailPlotCellViewModelProtocol {
    return MovieDetailPlotCellViewModel(plotText: model.plot)
  }
}
