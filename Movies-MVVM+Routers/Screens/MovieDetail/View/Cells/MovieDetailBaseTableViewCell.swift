//
//  MovieDetailBaseTableViewCell.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 23.10.2022.
//

import UIKit

class MovieDetailBaseTableViewCell: UITableViewCell {
  var viewModel: MovieDetailBaseCellViewModelProtocol!
  
  override func awakeFromNib() {
    super.awakeFromNib()
  }
  
  func configureCell() {}
}

