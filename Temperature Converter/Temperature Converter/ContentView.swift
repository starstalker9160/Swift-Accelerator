//
//  ContentView.swift
//  Temperature Converter
//
//  Created by star.stalker9160 on 30/10/2025.
//

import SwiftUI

struct ContentView: View {
    let c = 40.0
    let f = 40.0
    
    var cToF: Double { c * 9/5 + 32 }
    var fToC: Double { (f - 32) * 5/9 }
    
    var body: some View {
        VStack {
            Text("Temperature")
                .bold()
                .font(.title)
            Text(" ")
            Text("\(String(format: "%.2f", c))℃ - \(String(format: "%.1f", cToF))℉")
            Text("\(String(format: "%.2f", f))℉ - \(String(format: "%.1f", fToC))℃")
        }
    }
}

#Preview {
    ContentView()
}
