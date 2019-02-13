//
//  ClassName.swift
//  SwiftMessingUp
//
//  Created by Nishu Priya  on 08/02/19.
//  Copyright © 2019 Nishu Priya . All rights reserved.
//

import Foundation
import UIKit

extension NSObject {
    var theClassName: String {
        return NSStringFromClass(type(of: self))
    }
    static var className: String {
        return NSStringFromClass(self)
    }
}




