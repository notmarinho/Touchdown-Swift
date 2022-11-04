//
//  CartItemModel.swift
//  Touchdown
//
//  Created by Mateus Marinho on 04/11/22.
//

import Foundation

struct CartItem: Codable, Identifiable {
    let id: Int
    var product: Product
    var quantity: Int
    
    var totalPrice: String { return String(format: "%.2f", Double(product.price * quantity))}
}
