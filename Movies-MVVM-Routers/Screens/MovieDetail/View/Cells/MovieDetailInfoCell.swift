//
//  MovieDetailInfoCell.swift
//  Movies-MVVM-Routers
//
//  Created by Hasan Aygünoglu on 23.10.2022.
//

import UIKit

class MovieDetailInfoCell: MovieDetailBaseTableViewCell {
  @IBOutlet weak var infoLabel: UILabel!
  @IBOutlet weak var releaseLabel: UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }
  
  override func configureCell() {
    guard let viewModel = viewModel as? MovieDetailInfoCellViewModelProtocol else { return }
    infoLabel.text = viewModel.infoText
    releaseLabel.text = viewModel.releaseText
  }
}
