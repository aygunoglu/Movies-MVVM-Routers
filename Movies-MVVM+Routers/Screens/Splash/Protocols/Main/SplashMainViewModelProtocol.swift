//
//  SplashMainViewModelProtocol.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 22.10.2022.
//

import UIKit

protocol SplashMainViewModelProtocol {
  var startActivityIndicator: VoidHandler? { get set }
  var stopActivityIndicator: VoidHandler? { get set }
  var showInternetConnectionError: VoidHandler? { get set }
  var updateUI: VoidHandler? { get set }
  
  var splashText: String { get set }
  var splashTextFont: CGFloat { get set }
  
  
  var router: SplashRouterProtocol { get set }
  
  func requestRemoteConfig()
}
