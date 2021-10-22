//
//  Networking.swift
//  VIPER-Demo
//
//  Created by Manav Prakash on 22/10/21.
//

import Foundation


class APIClient: ProviderType {
  
  func fetchAndDecode<Model: Decodable>(url: URL) async throws -> Model {
      let data = try await fetchData(with: url)
      let decodedData = try JSONDecoder().decode(Model.self, from: data)
      return decodedData
  }
  
  func fetchData(with url: URL) async throws -> Data {
    return try await withCheckedThrowingContinuation { continuation in
      let task = URLSession.shared.dataTask(with: url) { data, _, error in
        if let error = error {
          continuation.resume(throwing: error)
        } else if let data = data {
          continuation.resume(returning: data)
          print(String(data: data, encoding: .utf8))
        } else {
          continuation.resume(throwing: NetworkError.dataNotFound)
        }
      }
      task.resume()
    }
  }
}

enum NetworkError: Error {
  case invalidPassword
  case dataNotFound
  case urlError
  case unexpected(code: Int)
}

protocol ProviderType {
  func fetchAndDecode<Model: Decodable>(url: URL) async throws -> Model
}
