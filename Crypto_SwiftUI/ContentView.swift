//
//  ContentView.swift
//  Crypto_SwiftUI
//
//  Created by Akash Shrestha on 2025-02-21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.colorTheme.greenColor
                .ignoresSafeArea()
            
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
