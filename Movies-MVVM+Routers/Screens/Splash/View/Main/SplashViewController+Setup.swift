//
//  SplashViewController+Setup.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 22.10.2022.
//

import UIKit

extension SplashViewController {
  final func setupGeneralView() {
    view.backgroundColor = .systemBackground
    navigationItem.title = Constants.splashVCNavigationTitle
  }
  
  final func applyActivityIndicator() {
    activityIndicator.initialize(in: view)
    activityIndicator.shouldAnimate(true)
  }
  
  final func setupSplashText() {
    view.addSubview(splashLabel)
    splashLabel.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor).isActive = true
    splashLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
  }
  
  final func setupBindings() {
    self.viewModel.updateUI = updateUI()
    self.viewModel.showInternetConnectionError = showConnectionError()
    self.viewModel.startActivityIndicator = startActivityIndicator()
    self.viewModel.stopActivityIndicator = stopActivityIndicator()
  }
}
