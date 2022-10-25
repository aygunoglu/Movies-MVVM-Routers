//
//  SplashViewController+Bindings.swift
//  Movies-MVVM-Routers
//
//  Created by Hasan Aygünoglu on 22.10.2022.
//

import UIKit

extension SplashViewController {
  final func updateUI() -> VoidHandler {
    return { [weak self] in
      DispatchQueue.main.async {
        guard let self = self else { return }
        self.splashLabel.text = self.viewModel.splashText
        self.splashLabel.font = .systemFont(ofSize: self.viewModel.splashTextFont, weight: .bold)
        self.activityIndicator.shouldAnimate(false)
      }
    }
  }
  
  final func pushViewController() -> (_ viewController: UIViewController) -> Void {
    return { [weak self] viewController in
      DispatchQueue.main.async {
        self?.navigationController?.pushViewController(viewController, animated: true)
      }
    }
  }
  
  final func showConnectionError() -> VoidHandler {
    return { [weak self] in
      guard let self = self else { return }
      ConnectionErrorView.showConnectionError(on: self.view)
      self.activityIndicator.shouldAnimate(false)
    }
  }
  
  final func startActivityIndicator() -> VoidHandler {
    return { [weak self] in
      guard let self = self else { return }
      DispatchQueue.main.async {
        self.activityIndicator.shouldAnimate(true)
      }
    }
  }
  
  final func stopActivityIndicator() -> VoidHandler {
    return { [weak self] in
      guard let self = self else { return }
      DispatchQueue.main.async {
        self.activityIndicator.shouldAnimate(false)
      }
    }
  }
}
