//
//  ParametersInteractor.swift
//  FizzBuzz
//
//  Created by Salwa GAIDA on 27/11/2022.
//

import Foundation

protocol ParametersInteractorProtocol {
  func retrieve()
}

class ParametersInteractor: ParametersInteractorProtocol {
  var presenter: ParametersPresenterProtocol
  
  init(presenter: ParametersPresenterProtocol) {
    self.presenter = presenter
  }
  
  func retrieve() {
    let model = ParametersModel(
      firstParam: "Premier multiplicateur",
      secondParam: "Deuxième multiplicateur",
      thirsParam: "Limite",
      fourthParam: "Première chaine",
      fifthParam: "Deuxième chaine",
      label: "Renseigner les paramètres suivants:"
    )
    presenter.presentModel(model: model)
  }
}

struct ParametersModel {
  let firstParam: String
  let secondParam: String
  let thirsParam: String
  let fourthParam: String
  let fifthParam: String
  let label: String
}
