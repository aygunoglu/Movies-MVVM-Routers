//
//  MovieDetailViewController.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 23.10.2022.
//

import UIKit

class MovieDetailViewController: UIViewController {
  var tableView: UITableView!
  var manager: MovieDetailManagerProtocol
  
  var activityIndicator = ActivityIndicator()
  
  init(manager: MovieDetailManagerProtocol) {
    self.manager = manager
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupGeneralView()
    setupTableView()
    setupBindings()
    applyActivityIndicator()
    manager.networkManager.requestPage()
  }
}

extension MovieDetailViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    return UITableView.automaticDimension
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return UITableView.automaticDimension
  }
}
