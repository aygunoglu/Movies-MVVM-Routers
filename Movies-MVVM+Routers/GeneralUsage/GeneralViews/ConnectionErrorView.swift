//
//  ConnectionErrorView.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 22.10.2022.
//

import UIKit

class ConnectionErrorView {
  static func showConnectionError(on superView: UIView) {
    let alertView = UIView()
    alertView.translatesAutoresizingMaskIntoConstraints = false
    alertView.backgroundColor = .systemBackground
    superView.addSubview(alertView)
    
    let titleLabel = UILabel()
    titleLabel.text = "No Internet Connection"
    titleLabel.textColor = .label
    titleLabel.font = .systemFont(ofSize: 30, weight: .regular)
    titleLabel.translatesAutoresizingMaskIntoConstraints = false
    alertView.addSubview(titleLabel)

    let subtitleLabel = UILabel()
    subtitleLabel.text = "Make sure your device has an internet connection before trying again."
    subtitleLabel.textColor = UIColor(red: 153/255.0, green: 153/255.0, blue: 153/255.0, alpha: 1)
    subtitleLabel.textAlignment = .center
    subtitleLabel.numberOfLines = 2
    subtitleLabel.font = .systemFont(ofSize: 18, weight: .regular)
    subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
    alertView.addSubview(subtitleLabel)
    
    let imageView = UIImageView()
    imageView.image = UIImage(named: "no_internet")!
    imageView.tintColor = .label
    imageView.widthAnchor.constraint(equalToConstant: 250).isActive = true
    imageView.heightAnchor.constraint(equalToConstant: 250).isActive = true
    imageView.translatesAutoresizingMaskIntoConstraints = false
    alertView.addSubview(imageView)
    
    alertView.widthAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.widthAnchor).isActive = true
    alertView.heightAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.heightAnchor).isActive = true
    alertView.centerXAnchor.constraint(equalTo: superView.centerXAnchor).isActive = true
    alertView.centerYAnchor.constraint(equalTo: superView.centerYAnchor).isActive = true
    titleLabel.centerXAnchor.constraint(equalTo: alertView.centerXAnchor).isActive = true
    titleLabel.topAnchor.constraint(equalTo: alertView.topAnchor, constant: 200).isActive = true
    imageView.centerXAnchor.constraint(equalTo: alertView.centerXAnchor).isActive = true
    imageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16).isActive = true
    
    subtitleLabel.centerXAnchor.constraint(equalTo: alertView.centerXAnchor).isActive = true
    subtitleLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 16).isActive = true
    subtitleLabel.rightAnchor.constraint(equalTo: alertView.rightAnchor, constant: -48).isActive = true
    subtitleLabel.leftAnchor.constraint(equalTo: alertView.leftAnchor, constant: 48).isActive = true
  }
}
