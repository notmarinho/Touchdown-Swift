//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Mateus Marinho on 02/11/22.
//

import SwiftUI

struct AddToCartDetailView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        Button {
         
            
            if let product = shop.selectedProduct {
                if (shop.itemQuantity > 0) {
                    feedback.impactOccurred()
                    shop.cart.append(CartItem(id: Int.random(in: 0...100), product: product, quantity: shop.itemQuantity))
                    shop.itemQuantity = 0
                }
                
              
            }
            
        } label: {
            Spacer()
            Text("Add To Cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
                
            Spacer()
        }
        .padding(15)
        .background(Color(
            red: shop.selectedProduct?.red ?? sampleProduct.red,
            green: shop.selectedProduct?.green ?? sampleProduct.green,
            blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
        )
        .clipShape(Capsule())

    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
