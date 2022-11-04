//
//  NavigationBar.swift
//  Touchdown
//
//  Created by Mateus Marinho on 02/11/22.
//

import SwiftUI

struct NavigationBarDetailView: View {
    // MARK - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        HStack {
            Button {
                feedback.impactOccurred()
                withAnimation(.easeOut) {
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }

            Spacer()
            
            Button {
                ()
            } label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }

        }
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
    }
}
