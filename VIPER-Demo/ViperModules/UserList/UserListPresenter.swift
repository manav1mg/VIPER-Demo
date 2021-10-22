//
//  UserListPresenter.swift
//  VIPER-Demo
//
//  Created by Manav Prakash on 22/10/21.
//  Copyright (c) 2021 Manav. All rights reserved.
//


import Foundation

final class UserListPresenter {
  
  // MARK: - Private properties -
  
  weak var view: UserListViewProtocol?
  private var interactor: UserListInteractorProtocol
  private var wireframe: UserListWireframeProtocol
  private var users: [UserEntity] = []
  // MARK: - Lifecycle -
  
  init(view: UserListViewProtocol, interactor: UserListInteractorProtocol, wireframe: UserListWireframeProtocol) {
    self.view = view
    self.interactor = interactor
    self.wireframe = wireframe
  }
}

// MARK: - Extensions -

extension UserListPresenter: UserListPresenterProtocol {
  
  @MainActor
  func viewDidLoad() {
    Task { [weak self] in
      do {
        let users = try await interactor.getUsers()
        self?.users = users 
        self?.view?.reloadTableView()
      } catch {
        // error handling
      }
    }
  }
  
  func userSelected(at index: IndexPath) {
    wireframe.navigateToUserDetail(for: users[index.row])
  }
  
  func numberOfRows() -> Int {
    return users.count
  }
  
  func cellModelForRow(indexPath: IndexPath) -> UserTableCellModel {
    return UserTableCellModel(data: users[indexPath.row], type: .simple)
  }
  
}
