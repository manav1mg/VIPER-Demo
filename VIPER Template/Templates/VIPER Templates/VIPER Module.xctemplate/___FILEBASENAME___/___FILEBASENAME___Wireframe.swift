//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

final class ___VARIABLE_moduleName___Wireframe: BaseWireframe {
  
  // MARK: - Private properties -
  private let storyboard = UIStoryboard(name: "Main", bundle: nil)
  var viewController: UIViewController
  // MARK: - Module setup -
  
  init() {
    let moduleViewController = ___VARIABLE_moduleName___ViewController()
    self.viewController = moduleViewController
    
    let interactor = ___VARIABLE_moduleName___Interactor()
    let presenter = ___VARIABLE_moduleName___Presenter(view: moduleViewController, interactor: interactor, wireframe: self)
    moduleViewController.presenter = presenter
  }
  
}

// MARK: - Extensions -

extension ___VARIABLE_moduleName___Wireframe: ___VARIABLE_moduleName___WireframeProtocol {
}
