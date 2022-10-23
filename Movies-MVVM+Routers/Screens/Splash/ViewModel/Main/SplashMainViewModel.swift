//
//  SplashViewModel.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 22.10.2022.
//

import UIKit
import FirebaseRemoteConfig

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
