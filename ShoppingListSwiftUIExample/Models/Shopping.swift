//
//  Shopping.swift
//  ShoppingListSwiftUIExample
//
//  Created by George Elsham on 16/01/2020.
//  Copyright © 2020 George Elsham. All rights reserved.
//

import Foundation


class Shopping: ObservableObject {
    
    @Published var list = [
        ShoppingItem("Bread", quantity: 1),
        ShoppingItem("Milk", quantity: 2),
        ShoppingItem("Eggs", quantity: 12)
    ]
    
    func addItem(_ item: ShoppingItem) {
        list.append(item)
    }
}


class ShoppingItem: Identifiable {
    
    var name: String
    var quantity: Int
    
    init(_ name: String, quantity: Int) {
        self.name = name
        self.quantity = quantity
    }
}
