//
//  UserListProtocols.swift
//  VIPER-Demo
//
//  Created by Manav Prakash on 22/10/21.
//  Copyright (c) 2021 Manav. All rights reserved.
//

import UIKit

protocol UserListWireframeProtocol: AnyObject {
  func navigateToUserDetail(for user: UserEntity)
}

protocol UserListViewProtocol: AnyObject {
  var presenter: UserListPresenterProtocol! { get set }
  func reloadTableView()
}

protocol UserListPresenterProtocol: AnyObject {
  var view: UserListViewProtocol? { get set }
  
  @MainActor func viewDidLoad()
  func userSelected(at index: IndexPath)
  func numberOfRows() -> Int
  func cellModelForRow(indexPath: IndexPath) -> UserTableCellModel
}

protocol UserListInteractorProtocol: AnyObject {
  func getUsers() async throws -> [UserEntity]
}
