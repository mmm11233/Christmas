//
//  AnimatedGradientTextView.swift
//  Christmas
//
//  Created by Mariam Joglidze on 24.12.23.
//

import SwiftUI

struct AnimatedGradientText: View {
    
    let text = "Happy Christmas TBC IT Academy"
    @State private var gradientAngle: Double = 0
    
    var body: some View {
        Text(text)
            .font(.system(size: 80))
            .foregroundColor(Color.clear)
            .background(
                AngularGradient(
                    gradient: Gradient(colors: [.red, .green, .blue, .purple, .orange]),
                    center: .center,
                    angle: .degrees(gradientAngle)
                )
                .mask(Text(text).font(.largeTitle).bold())
            )
            .onAppear {
                withAnimation(Animation.linear(duration: 5).repeatForever(autoreverses: false)) {
                    gradientAngle = 360
                }
            }
    }
    
}

#Preview {
    AnimatedGradientText()
}
