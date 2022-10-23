//
//  SplashRouter.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 23.10.2022.
//

import Foundation

protocol SplashRouterProtocol: BaseRouterProtocol {
  func goToSearchVC()
}

class SplashRouter: BaseRouter, SplashRouterProtocol {
  func goToSearchVC() {
    let searchViewController = ViewControllerMaker.searchViewController()
    pushViewController?(searchViewController)
  }
}
