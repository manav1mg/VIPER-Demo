//
//  UserTableCellModel.swift
//  VIPER-Demo
//
//  Created by Manav Prakash on 22/10/21.
//

import Foundation

struct UserTableCellModel {
  let data: UserEntity
  let type: UserTableCellType
}

enum UserTableCellType {
  case simple
  
  var cellIdentifier: String {
    switch self {
    case .simple:
      return "UserTableViewCell"
    }
  }
}
