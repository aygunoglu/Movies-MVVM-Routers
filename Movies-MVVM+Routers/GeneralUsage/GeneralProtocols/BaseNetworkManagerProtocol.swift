//
//  BaseNetworkManagerProtocol.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 23.10.2022.
//

import Foundation

protocol BaseNetworkManagerProtocol {
  func requestPage(for paginationType: PaginationType)
}

extension BaseNetworkManagerProtocol {
  func requestPage() {
    self.requestPage(for: .initial)
  }
}
