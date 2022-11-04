//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Mateus Marinho on 01/11/22.
//

import Foundation


struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
