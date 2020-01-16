//
//  ContentView.swift
//  ShoppingListSwiftUIExample
//
//  Created by George Elsham on 16/01/2020.
//  Copyright © 2020 George Elsham. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    
    @EnvironmentObject private var shopping: Shopping
    @State private var newItem: String?
    
    var body: some View {
        NavigationView {
            List {
                ForEach(shopping.list) { item in
                    NavigationLink.init(destination: EditView(currentItem: item)) {
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text(String(item.quantity))
                            Spacer().frame(width: 10)
                        }
                    }
                }
                
                if newItem != nil {
                    TextField("New Item", text: $newItem.bound, onCommit: {
                        if !self.newItem!.isEmpty {
                            self.shopping.addItem(ShoppingItem(self.newItem!, quantity: 1))
                        }
                        self.newItem = nil
                    })
                }
            }
            .navigationBarTitle("Shopping List")
            .navigationBarItems(trailing: Button(action: {
                self.newItem = ""
            }, label: {
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
            }))
        }
    }
}
