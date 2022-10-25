//
//  MovieDetailPlotCell.swift
//  Movies-MVVM-Routers
//
//  Created by Hasan Aygünoglu on 23.10.2022.
//

import UIKit

class MovieDetailPlotCell: MovieDetailBaseTableViewCell {
  @IBOutlet weak var plotDetailsLabel: UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }
  
  override func configureCell() {
    guard let viewModel = viewModel as? MovieDetailPlotCellViewModelProtocol else { return }
    plotDetailsLabel.text = viewModel.plotText
  }
}
