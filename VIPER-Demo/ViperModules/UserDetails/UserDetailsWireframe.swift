//
//  UserDetailsWireframe.swift
//  VIPER-Demo
//
//  Created by Manav Prakash on 22/10/21.
//  Copyright (c) 2021 Manav. All rights reserved.
//

import UIKit

final class UserDetailsWireframe: UserDetailsWireframeProtocol {
  
  // MARK: - Private properties -
  private let storyboard = UIStoryboard(name: "Main", bundle: nil)
  var viewController: UIViewController
  // MARK: - Module setup -
  
  init(user: UserEntity) {
    let moduleViewController = storyboard.instantiateViewController(ofType: UserDetailsViewController.self)
    self.viewController = moduleViewController
    let interactor = UserDetailsInteractor()
    let presenter = UserDetailsPresenter(view: moduleViewController, interactor: interactor, wireframe: self, user: user)
    moduleViewController.presenter = presenter
  }
  
}

