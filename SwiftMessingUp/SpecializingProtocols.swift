//
//  SpecializingProtocols.swift
//  SwiftMessingUp
//
//  Created by Nishu Priya  on 31/01/19.
//  Copyright © 2019 Nishu Priya . All rights reserved.
//

import Foundation
import UIKit

// Generic protocols

protocol Computable {
    associatedtype type
    var value1: type { get set }
    var value2: type { get set }
    
    func add() -> type
}

struct IntegerComputable: Computable {
    typealias type = Int
    
    var value1: type = 10
    var value2: Int = 20
    
    func add() -> Int {
        return value1 + value2
    }
    
    func subtract() -> Int {
        return value1 - value2
    }
}

struct StringComutable: Computable {
    typealias type = String
    var value1: String = "abc"
    var value2: String = "pqr"
    func add() -> String {
        return value1 + value2
    }
}

extension Computable where type == Int {
    func subtract() -> Int {
        return value2 - value1
    }
}

// MARK: Associated Type Pre-Defined Protocol

protocol Familiable {
    associatedtype FamilyType = Int
    func getName() -> [FamilyType]
}
// Adopt the pre-Defined Protocol
class NumberFamily: Familiable {
    func getName() -> [Int] {
        return [1,2,3]
    }
}

// Override Associated Type

struct NormalFamily<T: ExpressibleByStringLiteral>: Familiable {
    func getName() -> [T] {
        return ["a", "b", "c"]
    }
}
