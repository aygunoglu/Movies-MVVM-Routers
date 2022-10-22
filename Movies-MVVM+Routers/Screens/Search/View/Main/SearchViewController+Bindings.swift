//
//  SearchViewController+Bindings.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 22.10.2022.
//

import UIKit

extension SearchViewController {
  final func updateUI() -> VoidHandler {
    return { [weak self] in
      DispatchQueue.main.async {
        guard let self = self else { return }
        self.collectionView.backgroundView = nil
        self.collectionView.alwaysBounceVertical = true
        self.collectionView.reloadData()
      }
    }
  }
  
  final func showEmptyState() -> VoidHandler {
    return { [weak self] in
      DispatchQueue.main.async {
        guard let self = self else { return }
        self.collectionView.setEmptyMessage(Constants.emptyStateMessage)
        self.collectionView.alwaysBounceVertical = false
        self.collectionView.reloadData()
      }
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
  
  func pushViewController() -> (_ viewController: UIViewController) -> Void {
    return { [weak self] viewController in
      DispatchQueue.main.async {
        self?.navigationController?.pushViewController(viewController, animated: true)
      }
    }
  }
}
