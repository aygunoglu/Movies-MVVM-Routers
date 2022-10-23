//
//  ImageView+Ext.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 23.10.2022.
//

import Kingfisher

extension UIImageView {
  func setImageFromURL(urlString: String) {
    self.kf.setImage(with: URL(string: urlString))
  }
}
