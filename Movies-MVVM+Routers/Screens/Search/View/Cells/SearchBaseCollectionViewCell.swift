//
//  SearchBaseCollectionViewCell.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 22.10.2022.
//

import UIKit

class SearchBaseCollectionViewCell: UICollectionViewCell {
  var viewModel: SearchBaseCellViewModelProtocol!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    layer.cornerRadius = 10
  }
  
  func configureCell() {}
  
  func willDisplay() {}
}

