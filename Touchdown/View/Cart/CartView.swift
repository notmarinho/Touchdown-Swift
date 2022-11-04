//
//  CartView.swift
//  Touchdown
//
//  Created by Mateus Marinho on 04/11/22.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
            if shop.cart.isEmpty {
                VStack {
                    Text("Lista vazia")
                }
            } else {
                VStack {
                    ScrollView(.vertical, showsIndicators: false) {
                        ForEach(shop.cart) { cartItem in
                            CartItemView(cartItem: cartItem)
                                .padding(.horizontal, 10)
                        }
                    }
                    
                    Button {
                        ()
                    } label: {
                        Spacer()
                        
                        Text("Comprar")
                            .padding(10)
                        
                        Spacer()
                    }
                    .padding(.horizontal, 15)
                    .buttonStyle(BorderedButtonStyle())

                }
            }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .navigationBarTitle("Cart", displayMode: .large)
            .environmentObject(Shop())
    }
}
