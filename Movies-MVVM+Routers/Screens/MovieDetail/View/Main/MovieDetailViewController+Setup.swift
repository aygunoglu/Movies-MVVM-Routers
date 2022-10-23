//
//  MovieDetailViewController+Setup.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 23.10.2022.
//

import UIKit

extension MovieDetailViewController {
  final func setupGeneralView() {
    view.backgroundColor = .systemPink
    navigationController?.navigationBar.prefersLargeTitles = false
  }
  
  final func applyActivityIndicator() {
    activityIndicator.initialize(in: view)
    activityIndicator.shouldAnimate(true)
  }
  
  final func setupTableView() {
    self.tableView = UITableView(frame: .zero, style: .plain)
    self.tableView.delegate = self
    self.tableView.dataSource = manager.dataSource
    self.tableView.separatorStyle = .none
    
    self.tableView.allowsMultipleSelection = false
    self.tableView.backgroundColor = .systemBackground
    
    view.addSubview(tableView)
    
    self.tableView.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([self.tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                                 self.tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                                 self.tableView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
                                 self.tableView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor)])
    
    MovieDetailCellType.allCases.forEach { cellType in
      self.tableView.register(UINib(nibName: cellType.identifier, bundle: nil), forCellReuseIdentifier: cellType.identifier)
    }
  }
  
  final func setupBindings() {
    self.manager.viewModel.startActivityIndicator = startActivityIndicator()
    self.manager.viewModel.stopActivityIndicator = stopActivityIndicator()
    self.manager.viewModel.updateUI = updateUI()
  }
}
