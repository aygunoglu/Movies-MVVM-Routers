//
//  SearchPlaceholderCell.swift
//  Movies-MVVM-Routers
//
//  Created by Hasan Aygünoglu on 22.10.2022.
//

import UIKit

class SearchPlaceholderCell: SearchBaseCollectionViewCell {
  @IBOutlet weak var imagePlaceholder: UIView!
  @IBOutlet weak var titlePlaceholder: UIView!
  @IBOutlet weak var secondaryTitlePlaceholder: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
  override func willDisplay() {
    super.willDisplay()
    imagePlaceholder.startShimmering()
    titlePlaceholder.startShimmering()
    secondaryTitlePlaceholder.startShimmering()
    
  }
}
