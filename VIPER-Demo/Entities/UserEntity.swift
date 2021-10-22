//
//  UserEntity.swift
//  VIPER-Demo
//
//  Created by Manav Prakash on 22/10/21.
//

import Foundation

struct UserEntity: Codable {
  let id: Int?
  let name, username, email: String?
  let address: Address?
  let phone, website: String?
  let company: Company?
}

struct Address: Codable, CustomStringConvertible {
  var description: String {
    return street + " " + suite + " " + city + " - " + zipcode
  }
  
  let street, suite, city, zipcode: String
  let geo: Geo?
}

struct Geo: Codable {
  let lat, lng: String?
}

struct Company: Codable {
  let name, catchPhrase, bs: String?
}
