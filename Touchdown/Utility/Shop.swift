//
//  Shop.swift
//  Touchdown
//
//  Created by Mateus Marinho on 02/11/22.
//

import Foundation



class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
    @Published var itemQuantity: Int = 0
    @Published var cart: [CartItem] = []
}
