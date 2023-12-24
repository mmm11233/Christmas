//
//  AnimatedSizeText.swift
//  Christmas
//
//  Created by Mariam Joglidze on 24.12.23.
//

import SwiftUI

struct AnimatedSizeText: View {
    
    @State private var isResized = false
    
    var body: some View {
        VStack {
            Text("oh, oh, oh, merry christmas!")
                .foregroundStyle(.red)
                .font(.title)
                .bold()
                .scaleEffect(isResized ? 2.0 : 1.0)
                .animation(.easeInOut(duration: 1.0))
                .onTapGesture {
                    withAnimation {
                        self.isResized.toggle()
                    }
                }
        }
    }
}

#Preview {
    AnimatedSizeText()
}
