//
//  Rings.swift
//  ActivityRings
//
//  Created by Ayush Singh on 16/09/22.
//

import SwiftUI

struct Ring: View {
    let lineWidth: CGFloat
    let backgroundColor: Color
    let foregroundColor: Color
    let percentage: Double
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                // Track
                RingShape()
                    .stroke(style: StrokeStyle(lineWidth: lineWidth))
                    .fill(backgroundColor)
                // Animated Ring
                RingShape(percent: percentage)
                    .stroke(style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
                    .fill(backgroundColor)
            }
            
        }
        .animation(Animation.easeIn(duration: 1))
        .padding(lineWidth/2)
    }
}
