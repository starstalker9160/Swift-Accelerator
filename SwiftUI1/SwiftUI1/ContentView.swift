//
//  ContentView.swift
//  SwiftUI1
//
//  Created by star.stalker9160 on 10/07/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "bicycle")
                .font(.system(size: 100))
                .foregroundStyle(.tint)
            (
                Text("sick")
                    .italic()
                + Text(" bike")
            )
            .font(.system(size: 20))
            .foregroundStyle(Color.blue)
            .bold()
            .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
