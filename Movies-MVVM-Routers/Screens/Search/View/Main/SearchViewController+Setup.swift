//
//  SearchViewController+Setup.swift
//  Movies-MVVM-Routers
//
//  Created by Hasan Aygünoglu on 22.10.2022.
//

import UIKit

extension SearchViewController {
  final func setupGeneralView() {
    navigationItem.title = Constants.searchVCNavigationTitle
    navigationController?.navigationBar.prefersLargeTitles = false
  }
  
  final func applyActivityIndicator() {
    activityIndicator.initialize(in: view)
    activityIndicator.shouldAnimate(false)
  }
  
  final func setupSearchController() {
    navigationItem.searchController = searchController
    navigationItem.hidesSearchBarWhenScrolling = false
    searchController.searchBar.delegate = self
    searchController.searchBar.placeholder = Constants.searchBarPlaceholderText
  }
  
  final func setupCollectionView() {
    view.addSubview(collectionView)
    collectionView.backgroundColor = .systemBackground
    collectionView.keyboardDismissMode = .onDrag
    collectionView.allowsMultipleSelection = false
    
    collectionView.delegate = self
    collectionView.dataSource = manager.dataSource
    
    collectionView.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([collectionView.topAnchor.constraint(equalTo: view.topAnchor),
                                 collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                                 collectionView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
                                 collectionView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor)])
    
    collectionView.setEmptyMessage(Constants.emptyStateMessage)
    
    SearchCellType.allCases.forEach { cellType in
      self.collectionView.register(UINib(nibName: cellType.identifier, bundle: nil), forCellWithReuseIdentifier: cellType.identifier)
    }
  }
  
  final func setupBindings() {
    manager.viewModel.updateUI = updateUI()
    manager.viewModel.showEmptyState = showEmptyState()
    manager.viewModel.startActivityIndicator = startActivityIndicator()
    manager.viewModel.stopActivityIndicator = stopActivityIndicator()
    
    manager.router.pushViewController = pushViewController()
  }
}
