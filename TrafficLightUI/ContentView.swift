//
//  ContentView.swift
//  TrafficLightUI
//
//  Created by user on 08.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            ColorCircleView(color: .red)
            ColorCircleView(color: .yellow)
            ColorCircleView(color: .green)
                Spacer()
            Button(action: pressedButton) {
                Text("Press")
                    .font(.title)
            }
        }
        .padding()
    }
    
    private func pressedButton() {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
