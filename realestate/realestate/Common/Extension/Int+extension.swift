//
//  Int+extension.swift
//  realestate
//
//  Created by SENGHORT on 5/7/21.
//

import Foundation

extension Int {

    static var random: Int {
        return Int.random(n: Int.max)
    }

    static func random(n: Int) -> Int {
        return Int(arc4random_uniform(UInt32(n)))
    }

    static func random(min: Int, max: Int) -> Int {
        return Int.random(n: max - min + 1) + min

    }
}
