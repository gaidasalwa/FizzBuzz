//
//  ResultInteractor.swift
//  FizzBuzz
//
//  Created by Salwa GAIDA on 30/11/2022.
//

import Foundation

protocol ResultInteractorProtocol {
  func fetchResult(from request: [String:Any])
}

class ResultInteractor: ResultInteractorProtocol {
  var presenter: ResultPresenterProtocol
  
  init(presenter: ResultPresenterProtocol) {
    self.presenter = presenter
  }
  
  func fetchResult(from request: [String:Any]) {
    var strings: [String] = []
    guard let limitString = request["limit"] as? String,
          let limit = Int(limitString),
          let firstMultiplier = request["first_multiplier"] as? String,
          let firstMultiplierInt = Int(firstMultiplier),
          let secondMultiplier = request["second_multiplier"] as? String,
          let secondMultiplierInt = Int(secondMultiplier),
          let stringToReplace1 = request["string_to_replace_1"] as? String,
          let stringToReplace2 = request["string_to_replace_2"] as? String else {
      return
    }

    for i in 1...limit {
      if i % (firstMultiplierInt * secondMultiplierInt) == 0 {
        strings.append(stringToReplace1 + stringToReplace2)
      } else if i % firstMultiplierInt == 0 {
        strings.append(stringToReplace1)
      } else if i % secondMultiplierInt == 0 {
        strings.append(stringToReplace2)
      } else {
        strings.append(String(i))
      }
    }
    var result: String = ""
    for j in 0...strings.count - 1 {
      result += strings[j]
      result += ", "
    }
    presenter.present(result: result)
  }
}
