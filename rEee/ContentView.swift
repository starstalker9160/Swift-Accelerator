//
//  ContentView.swift
//  rEee
//
//  Created by star.stalker9160 on 01/07/2025.
//

import SwiftUI

struct ContentView: View {
    
    let name: String = "Abyaz"
    var emoji: String = "🎒"
    
    var body: some View {
        VStack {
            Text("Hiiii 👋")
            Text("Welcome to my ") +
            Text("awesome").italic().bold().foregroundStyle(.blue) +
            Text(" app")
            Text(emoji).font(.system(size: 60)).textSelection(.disabled)
        }.textSelection(.enabled)
        .padding()
    }
}

#Preview {
    ContentView()
}
