//
//  TitleView.swift
//  Touchdown
//
//  Created by Mateus Marinho on 01/11/22.
//

import SwiftUI

struct TitleView: View {
    // MARK - PROPERTIES
    var title: String
    
    // MARK - BODY
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.heavy)
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "My Helmet")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
