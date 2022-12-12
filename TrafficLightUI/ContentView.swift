//
//  ContentView.swift
//  TrafficLightUI
//
//  Created by user on 08.12.2022.
//

import SwiftUI

enum LightControl {
    case red, yellow, green
}

struct ContentView: View {
    @State private var buttonText = "START"
    
    @State private var redLightState = 0.3
    @State private var yellowLightState = 0.3
    @State private var greenLightState = 0.3

    @State private var currentControl = LightControl.red
    
    var body: some View {
        VStack() {
            ColorCircleView(color: .red, opacity: redLightState)
            ColorCircleView(color: .yellow, opacity: yellowLightState)
            ColorCircleView(color: .green, opacity: greenLightState)
            Spacer()
            StartButtonView(title: buttonText) {
                if buttonText == "START" {
                    buttonText = "NEXT"
                }
                changeLight()
            }
        }
        .padding(EdgeInsets(top: 50, leading: 0, bottom: 50, trailing: 0))
    }
    
    private func changeLight() {
        let lightOn = 1.0
        let lightOff = 0.3
        
        switch currentControl {
        case .red:
            greenLightState = lightOff
            redLightState = lightOn
            currentControl = .yellow
        case .yellow:
            redLightState = lightOff
            yellowLightState = lightOn
            currentControl = .green
        case .green:
            yellowLightState = lightOff
            greenLightState = lightOn
            currentControl = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
