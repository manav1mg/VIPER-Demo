//
//  UserListWireframe.swift
//  VIPER-Demo
//
//  Created by Manav Prakash on 22/10/21.
//  Copyright (c) 2021 Manav. All rights reserved.
//

import UIKit

final class UserListWireframe: UserListWireframeProtocol {
  // MARK: - Private properties -
  private let storyboard = UIStoryboard(name: "Main", bundle: nil)
  var viewController: UIViewController
  // MARK: - Module setup -
  
  init() {
    let moduleViewController = storyboard.instantiateViewController(ofType: UserListViewController.self)
    self.viewController = moduleViewController
    let interactor = UserListInteractor(provider: APIClient())
    let presenter = UserListPresenter(view: moduleViewController, interactor: interactor, wireframe: self)
    moduleViewController.presenter = presenter
  }
  
  func navigateToUserDetail(for user: UserEntity) {
    let wireframe = UserDetailsWireframe(user: user)
    viewController.navigationController?.pushViewController(wireframe.viewController, animated: true)
  }
  
}


