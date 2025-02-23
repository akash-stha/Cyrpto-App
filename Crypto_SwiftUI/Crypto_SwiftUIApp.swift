//
//  Crypto_SwiftUIApp.swift
//  Crypto_SwiftUI
//
//  Created by Akash Shrestha on 2025-02-21.
//

import SwiftUI

@main
struct Crypto_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
