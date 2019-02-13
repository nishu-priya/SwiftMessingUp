//
//  MethodSwizzlingExample.swift
//  SwiftMessingUp
//
//  Created by Nishu Priya  on 13/02/19.
//  Copyright © 2019 Nishu Priya . All rights reserved.
//

import Foundation
import UIKit

/*
 Its an Objective C runtime feature
 Reference : 
 1. https://medium.com/@abhimuralidharan/method-swizzling-in-ios-swift-1f38edaf984f
 2. https://medium.com/rocknnull/ios-to-swizzle-or-not-to-swizzle-f8b0ed4a1ce6
*/

/*
 Usage:
 Write the below code in viewDidLoad to test
 print(UIColor.red)
 print(UIColor.green)
 UIColor.swizzleDesription()
 print("\nswizzled\n")
 print(UIColor.red)
 print(UIColor.red)
 UIColor.swizzleDesription()
 print("\nTrying to swizzle again\n")
 print(UIColor.red)
 print(UIColor.red)

 */
extension UIColor {
    @objc func colorDescription() -> String {
        return "Printing rainbow colours."
    }
    
    private static let swizzleDesriptionImplementation: Void = {
        let instance: UIColor = UIColor.red
        let aClass: AnyClass! = object_getClass(instance)
        let originalMethod = class_getInstanceMethod(aClass, #selector(description))
        let swizzledMethod = class_getInstanceMethod(aClass, #selector(colorDescription))
        if let originalMethod = originalMethod, let swizzledMethod = swizzledMethod {
            // switch implementation..
            method_exchangeImplementations(originalMethod, swizzledMethod)
        }
    }()
    public static func swizzleDesription() {
        _ = self.swizzleDesriptionImplementation
    }
}
