//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Mateus Marinho on 01/11/22.
//

import SwiftUI

struct CategoryItemView: View {
    let category: Category
    var body: some View {
        Button {
            ()
        } label: {
            HStack(alignment: .center) {
                Image(category.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            }
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.gray, lineWidth: 1))
        }

    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0 ])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
