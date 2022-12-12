//
//  StartButtonView.swift
//  TrafficLightUI
//
//  Created by user on 12.12.2022.
//

import SwiftUI

struct StartButtonView: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
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
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView(title: "START", action: {})
    }
}
