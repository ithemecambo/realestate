//
//  Result.swift
//  realestate
//
//  Created by SENGHORT on 5/7/21.
//

import Foundation

enum Result<T: Codable> {
    case success(T)
    case failure(String)
}

enum Paginator<T: Codable> {
    case success(T, Bool)
    case failure(String)
}
