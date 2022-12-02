//
//  ParametersRouter.swift
//  FizzBuzz
//
//  Created by Salwa GAIDA on 27/11/2022.
//

import Foundation
import UIKit


protocol ParametersRouterProtocol {
  func goToResult(request: [String: Any])
}

class ParametersRouter: ParametersRouterProtocol {
  var viewController: UIViewController
  
  init(viewController: UIViewController) {
    self.viewController = viewController
  }
  func goToResult(request: [String: Any]) {
    let storyboard = UIStoryboard(name: "Result", bundle: nil)
    if let vc = storyboard.instantiateViewController(withIdentifier: "ResultViewController") as? ResultViewController {
      vc.request = request
      viewController.navigationController?.pushViewController(vc, animated: true)
    }
  }
}
