//
//  ContentView.swift
//  Cool Animation
//
//  Created by star.stalker9160 on 09/11/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var isSpinning: Bool = true
    
    var body: some View {
        ZStack {
            Color(UIColor.black)
            Circle()
                .stroke(lineWidth: 4)
                .foregroundColor(Color.pink)
                .frame(width: 360, height: 360)

            Text("weeee")
                .foregroundColor(.white)
                .font(.largeTitle)
                .italic()

            Image(systemName: "forward.fill")
                .foregroundColor(.green)
                .font(.largeTitle)
                .offset(y: -180)
                .rotationEffect(.degrees(isSpinning ? 0 : 360))
                .animation(.linear(duration: 3).repeatForever(autoreverses: false), value: isSpinning)
        }
        .ignoresSafeArea()
        .onAppear{
            self.isSpinning.toggle()
        }
    }
}

#Preview {
    ContentView()
}
