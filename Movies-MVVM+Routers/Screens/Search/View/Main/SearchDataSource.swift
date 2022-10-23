//
//  SearchDataSource.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 22.10.2022.
//

import UIKit

class SearchDataSource: NSObject, UICollectionViewDataSource {
  let viewModel: SearchMainViewModelProtocol
  
  init(viewModel: SearchMainViewModelProtocol) {
    self.viewModel = viewModel
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return viewModel.cellViewModels.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cellViewModel = viewModel.cellViewModels[indexPath.row]
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellViewModel.cellType.identifier, for: indexPath) as? SearchBaseCollectionViewCell else {
      print("error while dequeing cell")
      fatalError()
    }
    cell.viewModel = cellViewModel
    cell.configureCell()
    return cell
  }
}
