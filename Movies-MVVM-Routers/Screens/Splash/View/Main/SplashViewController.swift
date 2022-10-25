//
//  SplashViewController.swift
//  Movies-MVVM-Routers
//
//  Created by Hasan Aygünoglu on 22.10.2022.
//

import UIKit

class SplashViewController: UIViewController {
  
  var viewModel: SplashMainViewModelProtocol
  var activityIndicator = ActivityIndicator()
  
  lazy var splashLabel: UILabel = {
    let label = UILabel()
    label.text = viewModel.splashText
    label.textColor = .systemBlue
    label.font = .systemFont(ofSize: viewModel.splashTextFont, weight: .bold)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  init(viewModel: SplashMainViewModelProtocol) {
    self.viewModel = viewModel
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupGeneralView()
    setupSplashText()
    setupBindings()
    applyActivityIndicator()
    viewModel.requestRemoteConfig()
  }
}
