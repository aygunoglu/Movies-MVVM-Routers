//
//  UICollectionView+Ext.swift
//  Movies-MVVM-Routers
//
//  Created by Hasan Aygünoglu on 22.10.2022.
//
import UIKit

extension UICollectionView {
  func setEmptyMessage(_ message: String) {
    let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height))
    messageLabel.text = message
    messageLabel.textColor = .label
    messageLabel.backgroundColor = .systemBackground
    messageLabel.numberOfLines = 0
    messageLabel.textAlignment = .center
    messageLabel.font = .systemFont(ofSize: 35, weight: .semibold)
    messageLabel.sizeToFit()
    
    self.backgroundView = messageLabel
  }
}
