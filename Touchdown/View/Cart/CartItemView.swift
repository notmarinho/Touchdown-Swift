//
//  CartItemView.swift
//  Touchdown
//
//  Created by Mateus Marinho on 04/11/22.
//

import SwiftUI

struct CartItemView: View {
    var cartItem: CartItem
    
    var body: some View {
        HStack(spacing: 0) {
            // PRODUCT IMAGE
            Image(cartItem.product.image)
                .resizable()
                .scaledToFit()
                .background(.white)
                .cornerRadius(12)
                .padding(10)

            // PRODUCT INFO
            VStack(alignment: .leading) {
                Text(cartItem.product.name)
                    .font(.title2)
                    .fontWeight(.bold)
                    .lineLimit(2)
                
                Text("R$ \(cartItem.totalPrice)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .fontWeight(.medium)
                Spacer()
            }
            .padding(.vertical)
            
            Spacer()
            
            // ADD OR REMOVE 
            HStack(spacing: 0) {
                
                Button {
                    ()
                } label: {
                    Image(systemName: "minus.circle")
                        .font(.title)
                }
                Spacer()
                
                Text("\(cartItem.quantity)")
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding(.vertical, 5)
                Spacer()
                Button {
                    ()
                } label: {
                    Image(systemName: "plus.circle")
                        .font(.title)
                        
                }
            }
            .padding()
            
        }
        .frame(height: 100)
        .background(colorGray)
        .cornerRadius(10)
    }
}

struct CartItemView_Previews: PreviewProvider {
    static var previews: some View {
        CartItemView(cartItem: sampleCart[0])
            .previewLayout(.fixed(width: 200, height: 100))
    }
}
