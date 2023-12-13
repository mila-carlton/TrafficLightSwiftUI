//
//  ContentView.swift
//  TrafficLight
//
//  Created by PASGON TEXTILE on 12.12.23.
//

import SwiftUI

struct TrafficLightView: View {
    enum CurrentLight {
        case red, yellow, green
    }
    @State private var currentLight: CurrentLight = .red
    
    var body: some View {
        ZStack {
            Color.color
                .ignoresSafeArea()
            VStack {
                LightCircle(color: .red, opacity: (currentLight == .red ? 1 : 0.4))
                    .padding(8)
                LightCircle(color: .yellow, opacity: (currentLight == .yellow ? 1 : 0.4))
                    .padding(8)
                LightCircle(color: .green, opacity:(currentLight == .green ? 1 : 0.4))
                Spacer()
                
                Button(action: { switchLight() }) {
                    Text("START")
                        .foregroundStyle(.white)
                        .padding()
                        .font(.system(size: 30, weight: .bold))
                        .background(Color.blue)
                        .cornerRadius(15)
                        .padding()
                }
            }
        }
    }
    private func switchLight() {
        switch currentLight {
        case .red:
            currentLight = .yellow
        case .yellow:
            currentLight = .green
        case .green:
            currentLight = .red
        }
    }
}

#Preview {
    TrafficLightView()
}
