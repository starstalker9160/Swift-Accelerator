//
//  ContentView.swift
//  Funky Lights App
//
//  Created by star.stalker9160 on 09/11/2025.
//

import SwiftUI
internal import Combine

struct ContentView: View {
    @State private var currentColor = UIColor.systemPink
    @State private var lightState = 0

    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()

    var body: some View {
        ZStack {
            Color(currentColor)
        }
        .ignoresSafeArea()
        .onTapGesture {
            changeColor()
            timer.upstream.connect().cancel()
        }
        .onReceive(timer) { _ in
            changeColor()
        }
    }

    func changeColor() {
        if lightState == 0 {
            lightState = 1
            currentColor = UIColor.systemBlue
        } else if lightState == 1 {
            lightState = 2
            currentColor = UIColor.systemPurple
        } else {
            lightState = 0
            currentColor = UIColor.cyan
        }
    }
}

#Preview {
    ContentView()
}
