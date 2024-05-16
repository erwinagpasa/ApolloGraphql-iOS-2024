//
//  LaunchViewModel.swift
//  ApolloGraphql-iOS
//
//  Created by Developer on 16/05/2024.
//
import SpaceXAPI
import Foundation

class LaunchViewModel: ObservableObject {
  init() {
    fetch()
  }
  
  func fetch() {
    Network.shared.apollo.fetch(query: RocketsQuery()) { result in
      switch result {
      case .success(let graphQLResult):
        print("Sucess Result: \(graphQLResult)")
      case .failure(let error):
        print("Failure Error: \(error)")
      }
      
    }
  }
}
