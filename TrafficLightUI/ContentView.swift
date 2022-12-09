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
    @State var redLightView = ColorCircleView(color: .red)
    @State var yellowLightView = ColorCircleView(color: .yellow)
    @State var greenLightView = ColorCircleView(color: .green)
    @State var currentControl = LightControl.red
    @State var buttonText = "START"

    
    var body: some View {
        VStack() {
            redLightView
            yellowLightView
            greenLightView
            Spacer()
            pressButtonView
        }
        .padding(EdgeInsets(top: 50, leading: 0, bottom: 50, trailing: 0))
    }
    
    private var pressButtonView: some View {
        Button(action: changeLight) {
            Text(buttonText)
                .font(.title)
                .foregroundColor(Color.white)
                .frame(width: 100, height: 10)
                .padding()
        }
        .background(.blue)
        .clipShape(Capsule())
        .overlay(Capsule().stroke(Color.white, lineWidth: 1))
        .shadow(radius: 10)
    }
    
    private func changeLight() {
        if buttonText == "START" {
            buttonText = "NEXT"
        }

        switch currentControl {
        case .red:
            greenLightView.lightOn = false
            redLightView.lightOn = true
            currentControl = .yellow
        case .yellow:
            redLightView.lightOn = false
            yellowLightView.lightOn = true
            currentControl = .green
        case .green:
            yellowLightView.lightOn = false
            greenLightView.lightOn = true
            currentControl = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
