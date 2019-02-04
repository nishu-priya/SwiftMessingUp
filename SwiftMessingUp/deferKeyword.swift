//
//  deferKeyword.swift
//  SwiftMessingUp
//
//  Created by Nishu Priya  on 30/01/19.
//  Copyright © 2019 Nishu Priya . All rights reserved.
//

/*
 defer: The term defer is a keyword that provides a block of code that executes when the execution is leaving the current scope.
 */

func deferTest() {
    defer {
        print("This is defer inside statement")
    }
    print("This is defer ouside statement 1")
    print("This is defer ouside statement 2")
}


