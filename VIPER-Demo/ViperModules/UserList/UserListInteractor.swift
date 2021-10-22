//
//  UserListInteractor.swift
//  VIPER-Demo
//
//  Created by Manav Prakash on 22/10/21.
//  Copyright (c) 2021 Manav. All rights reserved.
//

import Foundation
import UIKit

final class UserListInteractor {
  var provider: ProviderType!
  
  init(provider: ProviderType) {
    self.provider = provider
  }
}

// MARK: - Extensions -

extension UserListInteractor: UserListInteractorProtocol {
  func getUsers() async throws -> [UserEntity] {
    return try await provider.fetchAndDecode(url: URL(string: "https://jsonplaceholder.typicode.com/users")!)
  }
  
  
}
