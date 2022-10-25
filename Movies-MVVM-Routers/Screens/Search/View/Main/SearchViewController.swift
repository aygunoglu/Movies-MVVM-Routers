//
//  SearchViewController.swift
//  Movies-MVVM-Routers
//
//  Created by Hasan Aygünoglu on 22.10.2022.
//

import UIKit

class SearchViewController: UIViewController {
  let searchController = UISearchController()
  var activityIndicator = ActivityIndicator()
  
  var manager: SearchManagerProtocol
  
  let collectionView: UICollectionView = {
    let viewLayout = UICollectionViewFlowLayout()
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: viewLayout)
    collectionView.alwaysBounceVertical = true
    return collectionView
  }()
  
  init(manager: SearchManagerProtocol) {
    self.manager = manager
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupGeneralView()
    setupCollectionView()
    setupSearchController()
    setupBindings()
    applyActivityIndicator()
  }
}

extension SearchViewController: UISearchBarDelegate {
  func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
    guard let text = searchBar.text else { return }
    manager.viewModel.searchText = text
    manager.networkManager.requestPage()
  }
}
