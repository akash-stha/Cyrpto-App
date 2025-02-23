//
//  Crypto_SwiftUIApp.swift
//  Crypto_SwiftUI
//
//  Created by Akash Shrestha on 2025-02-21.
//

import SwiftUI

@main
struct Crypto_SwiftUIApp: App {
    
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(viewModel)
        }
    }
}
