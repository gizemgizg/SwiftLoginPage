//
//  NetworkingServ'ce.swift
//  ProjectLayout
//
//  Created by OsiPc on 22.01.2021.
//

import Foundation
enum MyResult<T, E: Error> {
    case success(T)
    case failure(E)
}

class NetworkingService{
    func request(endpoint: String, completion: @escaping (Result<User, Error>) -> Void) {
        
    }
}
