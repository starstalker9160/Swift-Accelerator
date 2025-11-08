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
            Text("Fruits are full of vitamins")
                .font(.title)
                .bold()
                .padding()
                .background(Color(.green))
            HStack {
                VStack {
                    Text("🍎")
                        .font(.system(size: 80))
                    Text("Apple")
                }
                Spacer()
                VStack {
                    Text("🍉")
                        .font(.system(size: 80))
                    Text("Watermelon")
                }
            }
            .padding(.leading, 80)
            .padding(.trailing, 80)
            
            Spacer()
            
            HStack {
                VStack {
                    Text("🍊")
                        .font(.system(size: 80))
                    Text("Orange")
                }
                Spacer()
                VStack {
                    Text("🍌")
                        .font(.system(size: 80))
                    Text("Banana")
                }
            }
            .padding(.leading, 80)
            .padding(.trailing, 80)
        }
        .padding(.top, 250)
        .padding(.bottom, 250)
    }
}

#Preview {
    ContentView()
}
