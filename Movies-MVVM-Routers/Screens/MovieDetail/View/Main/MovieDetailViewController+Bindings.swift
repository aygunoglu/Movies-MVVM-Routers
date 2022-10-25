//
//  MovieDetailViewController+Bindings.swift
//  Movies-MVVM-Routers
//
//  Created by Hasan Aygünoglu on 23.10.2022.
//

import UIKit

extension MovieDetailViewController {
  final func updateUI() -> VoidHandler {
    return { [weak self] in
      DispatchQueue.main.async {
        guard let self = self else { return }
        self.activityIndicator.shouldAnimate(false)
        self.tableView.reloadData()
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
}
