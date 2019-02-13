//
//  PlayingWithOptionals.swift
//  SwiftMessingUp
//
//  Created by Nishu Priya  on 25/01/19.
//  Copyright © 2019 Nishu Priya . All rights reserved.
//

import Foundation

protocol _CollectionOrStringish {
    var isEmpty: Bool { get }
}

//Note: The classes String, Array, Dictionary and Set have isEmpty in their class so we don't need to define isEmpty here.
extension String: _CollectionOrStringish { }
extension Array: _CollectionOrStringish { }
extension Dictionary: _CollectionOrStringish {}
extension Set: _CollectionOrStringish {}

extension Optional where Wrapped: _CollectionOrStringish {
    var isNilOrEmpty: Bool {
        switch self {
        case let .some(value):
            return value.isEmpty
        default:
            return true
        }
    }
}


