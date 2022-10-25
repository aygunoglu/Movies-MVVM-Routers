//
//  MovieDetailTitleCell.swift
//  Movies-MVVM-Routers
//
//  Created by Hasan Aygünoglu on 23.10.2022.
//

import UIKit

class MovieDetailTitleCell: MovieDetailBaseTableViewCell {
  @IBOutlet weak var titleLabel: UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }
  
  override func configureCell() {
    guard let viewModel = viewModel as? MovieDetailTitleCellViewModelProtocol else { return }
    titleLabel.text = viewModel.titleText
  }
}
