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
    
    let baseUrl = "https://kiloloco.herokuapp.com/api"
    func request(endpoint: String, parameters: [String: Any], completion: @escaping (Result<User, Error>) -> Void) {
        guard let url = URL(string: baseUrl + endpoint) else {
            completion(.failure(NetworkingError.badUrl))
            return
        }
        var request = URLRequest(url: url)
        var components = URLComponents()
        var queryItems = [URLQueryItem]()
        for (key, value) in parameters{
            let queryItem = URLQueryItem(name: key, value: String(describing: value))
            queryItems.append(queryItem)
        }
        components.queryItems = queryItems
        
        let queryItemData = components.query?.data(using: .utf8)
        request.httpBody = queryItemData
        request.httpMethod = "POST"
        request.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        let session = URLSession.shared
        
        let task = session.dataTask(with: request) {
            (data, response, error) in
            DispatchQueue.main.async {
                
            guard  let unwrappedResponse = response as? HTTPURLResponse else {
                completion(.failure(NetworkingError.badResponse))
                return
            }
                switch unwrappedResponse.statusCode{
                case 200 ..< 300:
                    print("success")
                default:
                    print("failure")
                
                }
        }
    }
        
        task.resume()
    }
}


enum NetworkingError: Error{
    case badUrl
    case badResponse
}
