//
//  ContentView.swift
//  Fruits
//
//  Created by star.stalker9160 on 09/07/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Fruits")
                .font(.largeTitle)
                .bold()
                .foregroundStyle(Color(.blue))
            HStack {
                VStack {
                    Text("🍓")
                        .font(.largeTitle)
                    Text("Strawberry")
                }.padding().border(Color(.black), width: 1)
                VStack {
                    Text("🍎")
                        .font(.largeTitle)
                    Text("Apple")
                }.padding().border(Color(.black), width: 1)
            }
            HStack {
                VStack {
                    Text("🍉")
                        .font(.largeTitle)
                    Text("Watermelon")
                }.padding().border(Color(.black), width: 1)
                VStack {
                    Text("🍌")
                        .font(.largeTitle)
                    Text("Banana")
                }.padding().border(Color(.black), width: 1)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
