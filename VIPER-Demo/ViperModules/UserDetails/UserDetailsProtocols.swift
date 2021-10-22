//
//  UserDetailsProtocols.swift
//  VIPER-Demo
//
//  Created by Manav Prakash on 22/10/21.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol UserDetailsWireframeProtocol: AnyObject {
}

protocol UserDetailsViewProtocol: AnyObject {
  func showUserDetail(user: UserEntity)
}

protocol UserDetailsPresenterProtocol: AnyObject {
  var view: UserDetailsViewProtocol? { get set }
  
  func viewDidLoad()
}

protocol UserDetailsInteractorProtocol: AnyObject {
}
