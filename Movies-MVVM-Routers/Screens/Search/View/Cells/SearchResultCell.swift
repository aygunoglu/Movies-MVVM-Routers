//
//  SearchResultCell.swift
//  Movies-MVVM-Routers
//
//  Created by Hasan Aygünoglu on 22.10.2022.
//

import UIKit

class SearchResultCell: SearchBaseCollectionViewCell {
  @IBOutlet weak var containerView: UIView!
  @IBOutlet weak var posterImageView: UIImageView!
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var releaseLabel: UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }
  
  override func configureCell() {
    guard let viewModel = viewModel as? SearchResultCellViewModelProtocol else { return }
    containerView.backgroundColor = viewModel.backgroundColor
    titleLabel.text = viewModel.titleText
    releaseLabel.text = viewModel.releaseText
    
    posterImageView.setImageFromURL(urlString: viewModel.imageURL)
  }
}
