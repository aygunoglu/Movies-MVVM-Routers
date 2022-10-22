//
//  BaseRouter.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 22.10.2022.
//

import UIKit

class BaseRouter: BaseRouterProtocol {
  var pushViewController: ((_ viewController: UIViewController) -> Void)?
  var presentViewController: ((_ viewController: UIViewController) -> Void)?
  var popViewController: VoidHandler?
  var popToViewController: VoidHandler?
  var dismiss: VoidHandler?
}
