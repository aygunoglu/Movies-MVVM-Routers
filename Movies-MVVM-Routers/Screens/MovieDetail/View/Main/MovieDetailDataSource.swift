//
//  MovieDetailDataSource.swift
//  Movies-MVVM-Routers
//
//  Created by Hasan Aygünoglu on 23.10.2022.
//

import UIKit

class MovieDetailDataSource: NSObject, UITableViewDataSource {
  let viewModel: MovieDetailMainViewModelProtocol
  
  init(viewModel: MovieDetailMainViewModelProtocol) {
    self.viewModel = viewModel
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return viewModel.cellViewModels.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cellViewModel = viewModel.cellViewModels[indexPath.row]
    guard let cell = tableView.dequeueReusableCell(withIdentifier: cellViewModel.cellType.identifier, for: indexPath) as? MovieDetailBaseTableViewCell else { fatalError("Error while dequeing detail cell") }
    cell.viewModel = cellViewModel
    cell.configureCell()
    return cell
  }
}
