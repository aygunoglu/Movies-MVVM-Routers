//
//  SplashMainViewModel+RemoteConfig.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 22.10.2022.
//

import UIKit

extension SplashMainViewModel {
  func setupRemoteConfigDefaults() {
    let defaultValues: [String: NSObject] = [
      RemoteConfigModel.textString.key: RemoteConfigModel.textString.defaultValue,
      RemoteConfigModel.textFont.key: RemoteConfigModel.textFont.defaultValue
    ]
    remoteConfig.setDefaults(defaultValues)
  }
  
  func requestRemoteConfig() {
    remoteConfig.configSettings.minimumFetchInterval = 0
    
    remoteConfig.fetch(withExpirationDuration: 0) { [weak self] (status, error) in
      guard let self = self else { return }
      switch status {
      case .success:
        self.handleSuccessStatus()
      case .failure:
        self.handleFailureStatus(error: error)
      default: break
      }
    }
  }
  
  fileprivate func handleSuccessStatus() {
    self.remoteConfig.activate { _, error in
      guard error == nil else { return }
      
      self.splashText = self.remoteConfig.configValue(forKey: RemoteConfigModel.textString.key).stringValue ?? ""
      self.splashTextFont = self.remoteConfig.configValue(forKey: RemoteConfigModel.textFont.key).numberValue as? CGFloat ?? CGFloat(27)
      self.updateUI?()
    }
  }
  
  fileprivate func handleFailureStatus(error: Error?) {
    if !internetConnection.isReachable {
      showInternetConnectionError?()
    }
    print(error?.localizedDescription)
  }
}
