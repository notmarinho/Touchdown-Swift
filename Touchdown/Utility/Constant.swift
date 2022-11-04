//
//  Constant.swift
//  Touchdown
//
//  Created by Mateus Marinho on 31/10/22.
//

import SwiftUI

// MARK - DATA
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let sampleProduct: Product = products[0]
let sampleCart: [CartItem] = [CartItem(id: Int.random(in: 0...100), product: sampleProduct, quantity: 2), CartItem(id: Int.random(in: 0...100), product: sampleProduct, quantity: 1)]

// MARK - COLOR
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

// MARK - LAYOUT
let columSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// MARK - UX
let feedback = UIImpactFeedbackGenerator(style: .medium)

// MARK - API

// MARK - FONT

