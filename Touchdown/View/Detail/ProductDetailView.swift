//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Mateus Marinho on 02/11/22.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            //NAVBAR
//            NavigationBarDetailView()
//                .padding(.horizontal)
        
            
            //HEADER
            HeaderDetailView()
                .padding(.horizontal)
            
            //DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            // DETAIL BOTTOM PART
            VStack(alignment: .center) {
                //RATING
                RatingsSizesDetailView()
                    .padding(.top, -25)
                    .padding(.bottom, 10)
                
                //DESCRIPTION
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                
                // QUANTITY + FAVOURITE
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                
                // ADD TO CART
                AddToCartDetailView()
                    .padding(.bottom, 20)
                Spacer()
            }
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
        }
        .zIndex(0)
        .background(Color(
            red: shop.selectedProduct?.red ?? sampleProduct.red,
            green: shop.selectedProduct?.green ?? sampleProduct.green,
            blue: shop.selectedProduct?.blue ?? sampleProduct.blue
        ))
        .ignoresSafeArea(.all, edges: .bottom)
        
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
    }
}
