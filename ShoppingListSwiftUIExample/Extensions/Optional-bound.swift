//
//  Optional-bound.swift
//  ShoppingListSwiftUIExample
//
//  Created by George Elsham on 16/01/2020.
//  Copyright © 2020 George Elsham. All rights reserved.
//

import Foundation


extension Optional where Wrapped == String {
    
    var bound: String {
        get {
            return self ?? ""
        }
        set {
            self = newValue
        }
    }
}
