//
//  ContentView.swift
//  calculator
//
//  Created by star.stalker9160 on 05/07/2025.
//

import SwiftUI

struct ContentView: View {
    
    var x = 13
    var y = 5
    
    var body: some View {
        VStack {
            Text("X = \(x)\nY = \(String(format: "%02d", y))").font(.title)
            
            Text("\n")
            
            Text("Sum: ") + Text("\(x + y)").bold().underline()
            Text("Difference: ") + Text("\(x - y)").bold().underline()
            Text("Product: ") + Text("\(x * y)").bold().underline()
            Text("Quotient: ") + Text("\(x / y)").bold().underline()
            Text("Remainder: ") + Text("\(x % y)").bold().underline()
        }.font(.system(size: 30))
        .padding()
    }
}

#Preview {
    ContentView()
}
