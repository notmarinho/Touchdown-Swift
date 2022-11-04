//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Mateus Marinho on 30/10/22.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
