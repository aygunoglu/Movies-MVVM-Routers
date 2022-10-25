//
//  BaseRouterProcol.swift
//  Movies-MVVM-Routers
//
//  Created by Hasan Aygünoglu on 22.10.2022.
//

import UIKit

protocol BaseRouterProtocol {
  var pushViewController: ((_ viewController: UIViewController) -> Void)? { get set }
  var presentViewController: ((_ viewController: UIViewController) -> Void)? { get set }
  var popViewController: VoidHandler? { get set }
  var popToViewController: VoidHandler? { get set }
  var dismiss: VoidHandler? { get set }
}
