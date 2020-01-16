//
//  EditView.swift
//  ShoppingListSwiftUIExample
//
//  Created by George Elsham on 16/01/2020.
//  Copyright © 2020 George Elsham. All rights reserved.
//

import SwiftUI


struct EditView: View {
    
    let currentItem: ShoppingItem
    @EnvironmentObject private var shopping: Shopping
    @State private var name = ""
    
    var body: some View {
        TextField("Item", text: $name, onCommit: saveName)
            .padding()
            .background(Color.gray)
            .onAppear(perform: setName)
    }
    
    private func saveName() {
        shopping.objectWillChange.send()
        currentItem.name = name
    }
    private func setName() {
        name = currentItem.name
    }
}
