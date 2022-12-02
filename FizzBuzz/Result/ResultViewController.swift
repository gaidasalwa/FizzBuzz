//
//  ResultViewController.swift
//  FizzBuzz
//
//  Created by Salwa GAIDA on 30/11/2022.
//

import UIKit

protocol ResultViewControllerProtocol {
  func display(result: NSAttributedString)
}

class ResultViewController: UIViewController, ResultViewControllerProtocol {
  
  var interactor: ResultInteractorProtocol!
  var request: [String: Any]?
  
  // MARK: - Outlets

  @IBOutlet private(set) weak var label: UILabel!
  @IBOutlet private(set) weak var resultLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
    let presenter = ResultPresenter()
    presenter.viewController = self
    interactor = ResultInteractor(presenter: presenter)
    guard let request = request,
          !request.isEmpty else { return }
    setupUI()
    interactor.fetchResult(from: request)
  }
  
  private func setupUI() {
    label.text = "Le résultat obtenu est:"
  }
  
  func display(result: NSAttributedString) {
    resultLabel.attributedText = result
  }
}
