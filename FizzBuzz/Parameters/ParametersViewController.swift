//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Salwa GAIDA on 27/11/2022.
//

import UIKit

protocol ParametersViewControllerProtocol {
  func display(viewModel: ParametersViewModel)
}

class ParametersViewController: UIViewController, ParametersViewControllerProtocol {
  
  // MARK: - Parameters
  
  var interactor: ParametersInteractorProtocol!
  var router: ParametersRouterProtocol!
  var parameters: [String: Any] = [:]
  
  // MARK: - Outlets

  @IBOutlet private(set) weak var label: UILabel!
  @IBOutlet private(set) weak var firstStackView: UIStackView!
  @IBOutlet private(set) weak var secondStackView: UIStackView!
  @IBOutlet private(set) weak var thirdStackView: UIStackView!
  @IBOutlet private(set) weak var fourthStackView: UIStackView!
  @IBOutlet private(set) weak var fifthStackView: UIStackView!
  @IBOutlet private(set) weak var firstParameterTextField: UITextField!
  @IBOutlet private(set) weak var secondParameterTextField: UITextField!
  @IBOutlet private(set) weak var thirdParameterTextField: UITextField!
  @IBOutlet private(set) weak var fifthParameterTextField: UITextField!
  @IBOutlet private(set) weak var fourthParameterTextField: UITextField!
  @IBOutlet private(set) weak var multiplier1Label: UILabel!
  @IBOutlet private(set) weak var multiplier2Label: UILabel!
  @IBOutlet private(set) weak var limitLabel: UILabel!
  @IBOutlet private(set) weak var string1Label: UILabel!
  @IBOutlet private(set) weak var string2Label: UILabel!

  // MARK: - Life Cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    title = "Paramètres"
    router = ParametersRouter(viewController: self)
    let presenter = ParametersPresenter()
    presenter.viewController = self
    interactor = ParametersInteractor(presenter: presenter)
    interactor.retrieve()
  }
  
  // MARK: - IBActions

  @IBAction func onCtaClicked() {
    parameters["first_multiplier"] = firstParameterTextField.text
    parameters["second_multiplier"] = secondParameterTextField.text
    parameters["string_to_replace_1"] = fourthParameterTextField.text
    parameters["string_to_replace_2"] = fifthParameterTextField.text
    parameters["limit"] = thirdParameterTextField.text
    router?.goToResult(request: parameters)
  }
  
  func display(viewModel: ParametersViewModel) {
    label.attributedText = viewModel.label
    multiplier1Label.attributedText = viewModel.firstParam
    multiplier2Label.attributedText = viewModel.secondParam
    limitLabel.attributedText = viewModel.thirsParam
    string1Label.attributedText = viewModel.fourthParam
    string2Label.attributedText = viewModel.fifthParam
  }
}

