//
//  ContentView.swift
//  Hello App
//
//  Created by star.stalker9160 on 09/07/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("star_stalker")
                .resizable()
                .scaledToFill()
                .frame(width: 250, height: 250)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(Color.black, lineWidth: 2)
                )
            Text("Hi I'm ")
                .font(.title)
                + Text("Abyaz")
                    .bold()
                    .font(.title)
            Text("Student / Developer")
                .font(.title3)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
