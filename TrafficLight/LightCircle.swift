//
//  LightCircle.swift
//  TrafficLight
//
//  Created by PASGON TEXTILE on 12.12.23.
//

import SwiftUI

struct LightCircle: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        VStack {
            Circle()
                .foregroundStyle(color)
                .frame(width: 150)
                .overlay(
                    Circle()
                        .stroke(Color.white, lineWidth: 4)
                    )
                .shadow(radius: 10)
                .opacity(opacity)
        }
    }
}

#Preview {
    ZStack {
        Color.black
        VStack {
            LightCircle(color: .red, opacity: 0.4)
            LightCircle(color: .yellow, opacity: 0.4)
            LightCircle(color: .green, opacity: 0.4)
        }
    }
}
