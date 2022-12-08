//
//  ColorCircleView.swift
//  TrafficLightUI
//
//  Created by user on 08.12.2022.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    var lightOn: Bool = false
    
    private var lightColor: Color {
        lightOn ? color : color.opacity(0.3)
    }
    
    var body: some View {
//        Color(.orange)
//            .ignoresSafeArea()
//            .frame(width: 150, height: 150)
//            .clipShape(Circle())
//            .overlay(Circle().stroke(Color.white, lineWidth: 2))
//            .shadow(radius: 10)
        Circle()
            .frame(width: 150, height: 150)
            .foregroundColor(color)
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
            .shadow(radius: 10)
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .red)
    }
}
