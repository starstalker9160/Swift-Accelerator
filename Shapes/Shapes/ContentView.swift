//
//  ContentView.swift
//  Shapes
//
//  Created by star.stalker9160 on 09/11/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedShape = "Circle"
    let shapes = ["Rectangle", "Circle", "Capsule", "Ellipse"]
    
    var body: some View {
        VStack (spacing: 20) {
            Text("Shapes")
                .font(.title)
                .bold()
            Picker("Choose a Shape", selection: $selectedShape) {
                ForEach(shapes, id: \.self) { shape in
                    Text(shape)
                }
            }
            .pickerStyle(DefaultPickerStyle())
            .padding()
            
            if selectedShape == "Rectangle" {
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 200, height: 150)
            } else if selectedShape == "Circle" {
                Circle()
                .fill(Color.pink)
                .frame(width: 200, height: 200)
            } else if selectedShape == "Ellipse" {
                Ellipse()
                .fill(Color.green)
                .frame(width: 250, height: 120)
            } else if selectedShape == "Capsule" {
                Capsule()
                .fill(Color.orange)
                .frame(width: 250, height: 80)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
