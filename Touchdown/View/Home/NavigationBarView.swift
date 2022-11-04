//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Mateus Marinho on 31/10/22.
//

import SwiftUI

struct NavigationBarView: View {
    // MARK - PROPERTIES
    
    @EnvironmentObject var shop: Shop
    @State private var isAnimated: Bool = false
    
    var body: some View {
        HStack {
            Button {
                ()
            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            } // Button

            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated = true
                    }
                }
            
            Spacer()
            
            NavigationLink(destination: CartView().navigationBarTitle("Cart", displayMode: .large)) {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                    
                    if !shop.cart.isEmpty {
                        Circle()
                            .fill(.red)
                            .frame(width: 14, alignment: .center)
                            .offset(x: 13,y: -10)
                    }
                }
            }
        }
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
