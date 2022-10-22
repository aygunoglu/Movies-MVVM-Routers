//
//  SearchViewController.swift
//  Movies-MVVM+Routers
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
    setupBindings()
    applyActivityIndicator()
    manager.networkManager.requestPage()
  }
}

extension SearchViewController: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    return UIEdgeInsets(top: 15, left: 10, bottom: 10, right: 10)
  }

  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let width = (view.frame.width - 30) / 2
    return CGSize(width: width, height: 296)
  }
  
  func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
    let cell = cell as? SearchPlaceholderCell
    cell?.willDisplay()
  }
}
