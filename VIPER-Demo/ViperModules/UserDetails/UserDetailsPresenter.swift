//
//  UserDetailsPresenter.swift
//  VIPER-Demo
//
//  Created by Manav Prakash on 22/10/21.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//


import Foundation

final class UserDetailsPresenter: UserDetailsPresenterProtocol {
  
  // MARK: - Private properties -
  
  weak var view: UserDetailsViewProtocol?
  var interactor: UserDetailsInteractorProtocol?
  var wireframe: UserDetailsWireframeProtocol?
  var user: UserEntity
  // MARK: - Lifecycle -
  
  init(view: UserDetailsViewProtocol, interactor: UserDetailsInteractorProtocol, wireframe: UserDetailsWireframeProtocol, user: UserEntity) {
    self.view = view
    self.interactor = interactor
    self.wireframe = wireframe
    self.user = user
  }
  
  func viewDidLoad() {
    view?.showUserDetail(user: user)
  }
}

