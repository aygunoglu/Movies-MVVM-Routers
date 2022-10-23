//
//  SplashViewModel.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 22.10.2022.
//

import UIKit
import FirebaseRemoteConfig

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

class SplashMainViewModel: SplashMainViewModelProtocol {
  var startActivityIndicator: VoidHandler?
  var stopActivityIndicator: VoidHandler?
  var showInternetConnectionError: VoidHandler?
  var updateUI: VoidHandler?
  
  var splashText: String = ""
  var splashTextFont: CGFloat = 27
  
  let remoteConfig = RemoteConfig.remoteConfig()
  let internetConnection: InternetConnectable = InternetConnection()
  var router: SplashRouterProtocol = SplashRouter()
  
  init() {
    setupRemoteConfigDefaults()
  }
}
