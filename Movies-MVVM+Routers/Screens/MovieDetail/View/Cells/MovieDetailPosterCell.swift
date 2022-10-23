//
//  MovieDetailPosterCell.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 23.10.2022.
//

import UIKit

class MovieDetailPosterCell: MovieDetailBaseTableViewCell {
  @IBOutlet weak var posterView: UIImageView!
  
  override func awakeFromNib() {
    super.awakeFromNib()
  }

  override func configureCell() {
    guard let viewModel = viewModel as? MovieDetailPosterCellViewModelProtocol else { return }
    posterView.setImageFromURL(urlString: viewModel.imageURL)
  }
}
