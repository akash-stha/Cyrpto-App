//
//  StatisticView.swift
//  Crypto_SwiftUI
//
//  Created by Akash Shrestha on 2025-03-03.
//

import SwiftUI

struct StatisticView: View {
    
    let stat: StatisticModel
    var percentageCondition: Bool {
        (stat.percentageChange ?? 0) >= 0
    }
    
    var body: some View {
        VStack {
            Text(stat.title)
                .font(.caption)
                .foregroundStyle(.secondaryText)
            Text(stat.value)
                .font(.headline)
                .foregroundStyle(.accent)
            HStack(spacing: 3) {
                Image(systemName: "triangle.fill")
                    .font(.caption2)
                    .rotationEffect(Angle(degrees: percentageCondition ? 0 : 180 ))
                Text(stat.percentageChange?.asPercentageString() ?? "")
                    .font(.caption)
                    .bold()
            }
            .foregroundStyle(percentageCondition ? Color.colorTheme.greenColor : Color.colorTheme.redColor)
            .opacity(stat.percentageChange == nil ? 0 : 1)
        }
    }
}

struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StatisticView(stat: dev.stat1)
                .previewLayout(.sizeThatFits)
            
            StatisticView(stat: dev.stat3)
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
        .padding()
    }
}
