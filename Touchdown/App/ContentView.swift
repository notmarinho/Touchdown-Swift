//
//  ContentView.swift
//  Touchdown
//
//  Created by Mateus Marinho on 30/10/22.
//

import SwiftUI

struct ContentView: View {
    // MARK - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    // MARK - BODY
    var body: some View {
        NavigationView {
            VStack {
                NavigationBarView()
                    .padding()
                    .background(.white)
                    .shadow(color: .black.opacity(0.05), radius: 5)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing: 0) {
                        FeaturedTabView()
                            .frame(height: UIScreen.main.bounds.width / 1.475) // This will fix the layout rendering priority issue by using the screen's aspect ratio.
                            .padding(.vertical, 20)
                        
                        CategoryGridView()
                        
                        TitleView(title: "Helmet")
                        LazyVGrid(columns: gridLayout, spacing: 15) {
                            ForEach(products) { product in
                                NavigationLink(destination: ProductDetailView()) {
                                    ProductItemView(product: product)
                                }
                                .simultaneousGesture(TapGesture().onEnded{
                                    feedback.impactOccurred()
                                    shop.selectedProduct = product
                                    shop.showingProduct = true
                                })
                            }
                        }
                        .padding(15)
                        
                        FooterView()
                            .padding(.horizontal)
                    } //: VSTACK
                }) //: SCROLL
            }
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
