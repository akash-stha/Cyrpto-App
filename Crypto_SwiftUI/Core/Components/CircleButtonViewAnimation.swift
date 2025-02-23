//
//  CircleButtonViewAnimation.swift
//  Crypto_SwiftUI
//
//  Created by Akash Shrestha on 2025-02-22.
//

import SwiftUI

struct CircleButtonViewAnimation: View {
    
    @Binding var animate: Bool
    
    var body: some View {
        Circle()
            .stroke(lineWidth: 5.0)
            .scale(animate ? 1.0 : 0.0)
            .opacity(animate ? 0.0 : 1.0)
            .animation(animate ? .easeOut(duration: 1.0) : .none, value: animate)
    }
}

#Preview {
    CircleButtonViewAnimation(animate: .constant(false))
        .foregroundStyle(.red)
        .frame(width: 100, height: 100)
}
