//
//  Network.swift
//  ApolloGraphql-iOS
//
//  Created by Developer on 16/05/2024.
//
import Foundation
import Apollo


class Network {
  static let shared = Network()
  
  private(set) lazy var apollo = ApolloClient(url: URL(string:"https://spacex-production.up.railway.app/")!)
  private init () {}
}
