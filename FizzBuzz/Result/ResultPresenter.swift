//
//  ResultPresenter.swift
//  FizzBuzz
//
//  Created by Salwa GAIDA on 30/11/2022.
//

import Foundation
import UIKit

protocol ResultPresenterProtocol {
  func present(result: String?)
}

class ResultPresenter: ResultPresenterProtocol {
  
  var viewController: ResultViewControllerProtocol?
  
  func present(result: String?) {
    guard let result = result else { return }
    let formattedResult = NSAttributedString(string: result)
    viewController?.display(result: formattedResult)
  }
}

