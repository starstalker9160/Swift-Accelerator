//
//  ContentView.swift
//  Getting Started with Xcode
//
//  Created by star.stalker9160 on 13/09/2025.
//

import SwiftUI

struct ContentView: View {
    
    let name: String = "Abyaz"
    var message: String = "I am awesome"
    
    var body: some View {
        VStack {
            Text("Hiiii 👋")
                .font(.title)
            Text("\nMy name is ") +
            Text(name)
                .italic()
                .bold()
            Text(message)
        }.textSelection(.enabled)
        .padding()
    }
}

#Preview {
    ContentView()
}
