//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Mateus Marinho on 31/10/22.
//

import SwiftUI

struct FeaturedItemView: View {
    // MARK - PROPERTY
    let player: Player
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
