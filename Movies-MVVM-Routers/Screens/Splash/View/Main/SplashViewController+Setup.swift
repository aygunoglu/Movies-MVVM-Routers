//
//  SplashViewController+Setup.swift
//  Movies-MVVM-Routers
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
    splashLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    splashLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
  }
  
  final func setupBindings() {
    viewModel.updateUI = updateUI()
    viewModel.showInternetConnectionError = showConnectionError()
    viewModel.startActivityIndicator = startActivityIndicator()
    viewModel.stopActivityIndicator = stopActivityIndicator()
    
    viewModel.router.pushViewController = pushViewController()
  }
}
