//
//  login.swift
//  ProjectLayout
//
//  Created by OsiPc on 22.01.2021.
//


import Foundation

enum LoginType: String {
  case normal = "Sign In normally"
  case apple = "Apple"
  case google = "Google"
  
  var name: String {
    return self.rawValue
  }
}

struct User {
  var username: String?
  var password: String?
  var token: String?
  
  init(username: String?, password: String?, token: String? = nil) {
    self.username = username
    self.password = password
    self.token = token
  }
}
