//
//  CircleButton.swift
//  Crypto_SwiftUI
//
//  Created by Akash Shrestha on 2025-02-21.
//

import SwiftUI

struct CircleButtonView: View {
    
    let iconName: String
    
    var body: some View {
        Image(systemName: iconName)
            .font(.headline)
            .foregroundStyle(Color.colorTheme.accent)
            .frame(width: 50, height: 50)
            .background(Circle().foregroundStyle(Color.colorTheme.bgColor))
            .shadow(color: Color.colorTheme.accent.opacity(0.28), radius: 10)
            .padding()
    }
}

struct CircleButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CircleButtonView(iconName: "info")
                .previewLayout(.sizeThatFits)

            CircleButtonView(iconName: "plus")
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }

    }
}
