//
//  ColorCircleView.swift
//  TrafficLightUI
//
//  Created by user on 08.12.2022.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    
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
            .opacity(0.3)
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .red)
    }
}
