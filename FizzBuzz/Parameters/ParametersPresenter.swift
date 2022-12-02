//
//  ParametersPresenter.swift
//  FizzBuzz
//
//  Created by Salwa GAIDA on 27/11/2022.
//

import UIKit

struct ParametersViewModel {
  let firstParam: NSAttributedString
  let secondParam: NSAttributedString
  let thirsParam: NSAttributedString
  let fourthParam: NSAttributedString
  let fifthParam: NSAttributedString
  let label: NSAttributedString
}

protocol ParametersPresenterProtocol {
  func presentModel(model: ParametersModel)
}

class ParametersPresenter: ParametersPresenterProtocol {
  
  var viewController: ParametersViewControllerProtocol?
  
  func presentModel(model: ParametersModel) {
    let attributesString: [NSAttributedString.Key : Any] = [
      NSAttributedString.Key.foregroundColor: UIColor.systemIndigo,
      NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-Bold", size: 17) ?? .boldSystemFont(ofSize: 17)
    ]
    
    let attributesForLabel: [NSAttributedString.Key : Any] = [
      NSAttributedString.Key.foregroundColor: UIColor.black,
      NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-Bold", size: 22) ?? .boldSystemFont(ofSize: 22)
    ]
    let viewModel = ParametersViewModel(
      firstParam: NSAttributedString(string: model.firstParam, attributes: attributesString),
      secondParam: NSAttributedString(string: model.secondParam, attributes: attributesString),
      thirsParam: NSAttributedString(string: model.thirsParam, attributes: attributesString),
      fourthParam: NSAttributedString(string: model.fourthParam, attributes: attributesString),
      fifthParam: NSAttributedString(string: model.fifthParam, attributes: attributesString),
      label: NSAttributedString(string: model.label, attributes: attributesForLabel)
    )
    viewController?.display(viewModel: viewModel)
  }
}
