//
//  InternetConnection.swift
//  Movies-MVVM+Routers
//
//  Created by Hasan Aygünoglu on 22.10.2022.
//

import Alamofire

protocol InternetConnectable {
  var isReachable: Bool { get }
}

struct InternetConnection: InternetConnectable {
  private var reachabilityManager: NetworkReachabilityManager?
  
  init() {
    reachabilityManager = NetworkReachabilityManager()
  }
  
  var isReachable: Bool {
    return (reachabilityManager?.isReachable == true)
  }
}
