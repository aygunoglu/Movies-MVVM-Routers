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
  
  private func handleSuccessStatus() {
    self.remoteConfig.activate { _, error in
      guard error == nil else { return }
      
      self.splashText = self.remoteConfig.configValue(forKey: RemoteConfigModel.textString.key).stringValue ?? ""
      self.splashTextFont = self.remoteConfig.configValue(forKey: RemoteConfigModel.textFont.key).numberValue as? CGFloat ?? 27
      self.updateUI?()
      
      DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
        self.router.goToSearchVC()
      }
    }
  }
  
  private func handleFailureStatus(error: Error?) {
    if !internetConnection.isReachable {
      showInternetConnectionError?()
      stopActivityIndicator?()
    } else {
      print(error?.localizedDescription)
    }
  }
}
