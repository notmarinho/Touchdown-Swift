//
//  QuantityFavouriteDetailView.swift
//  Touchdown
//
//  Created by Mateus Marinho on 02/11/22.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    // MARK - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    // MARK - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button {
                if shop.itemQuantity > 0 {
                    feedback.impactOccurred()
                    shop.itemQuantity -= 1
                }
            } label: {
                Image(systemName: "minus.circle")
            }
            
            Text("\(shop.itemQuantity)")
                .fontWeight(.bold)
                .frame(minWidth: 36)
            
            Button {
                feedback.impactOccurred()
                shop.itemQuantity += 1
            } label: {
                Image(systemName: "plus.circle")
            }
            
            Spacer()
            
            Button {
               ()
            } label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            }
            

        }
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
