//
//  SearchViewController+CollectionViewDelegate.swift
//  Movies-MVVM-Routers
//
//  Created by Hasan Aygünoglu on 23.10.2022.
//

import UIKit

extension SearchViewController: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    return UIEdgeInsets(top: 15, left: 10, bottom: 10, right: 10)
  }

  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let width = (view.frame.width - 30) / 2
    return CGSize(width: width, height: 296)
  }
  
  func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
    if let cell = cell as? SearchPlaceholderCell {
      cell.willDisplay()
      manager.networkManager.requestPage(for: .next)
    }
  }
  
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    guard let cellViewModel = manager.viewModel.cellViewModels[indexPath.item] as? SearchResultCellViewModelProtocol else { return }
    manager.router.goToDetailVC(with: cellViewModel.imdbID)
  }
}
