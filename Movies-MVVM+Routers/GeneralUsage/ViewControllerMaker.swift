//
//  ViewControllerMaker.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 22.10.2022.
//

import Foundation

class ViewControllerMaker {}

extension ViewControllerMaker {
  static func splashViewController() -> SplashViewController {
    let viewModel = SplashMainViewModel()
    return SplashViewController(viewModel: viewModel)
  }
}
