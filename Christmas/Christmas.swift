//
//  ContentView.swift
//  Christmas
//
//  Created by Mariam Joglidze on 23.12.23.
//

import SwiftUI
import EffectsLibrary

struct Christmas: View {
    
    var body: some View {
        
        VStack(spacing: 40) {
            SnowView()
            AnimatedSizeText()
                .frame(maxWidth: .infinity)
            AnimatedGradientText()
            ChristmaTreeView()

        }
        .padding(.bottom, 200)
    }
}


#Preview {
    Christmas()
}
