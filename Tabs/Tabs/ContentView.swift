//
//  ContentView.swift
//  Tabs
//
//  Created by star.stalker9160 on 20/12/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FahrenheitToCelsiusView()
                .tabItem {
                    Label("F → C", systemImage: "thermometer")
                }

            CelsiusToFahrenheitView()
                .tabItem {
                    Label("C → F", systemImage: "thermometer.sun")
                }
        }
    }
}

struct FahrenheitToCelsiusView: View {
    @State private var fahrenheit = ""

    var celsius: String {
        guard let value = Double(fahrenheit) else { return "--" } // using gaurd here to exit early
        return String(format: "%.2f", (value - 32) * 5 / 9)
    }

    var body: some View {
        VStack(spacing: 20) {
            Text("Fahrenheit to Celsius")
                .font(.title)

            TextField("Enter Fahrenheit", text: $fahrenheit)
                .keyboardType(.decimalPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)

            Text("Celsius: \(celsius)")
                .font(.headline)

            Spacer()
        }
        .padding()
    }
}

struct CelsiusToFahrenheitView: View {
    @State private var celsius = ""

    var fahrenheit: String {
        guard let value = Double(celsius) else { return "--" } // using gaurd here too
        return String(format: "%.2f", value * 9 / 5 + 32)
    }

    var body: some View {
        VStack(spacing: 20) {
            Text("Celsius to Fahrenheit")
                .font(.title)

            TextField("Enter Celsius", text: $celsius)
                .keyboardType(.decimalPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)

            Text("Fahrenheit: \(fahrenheit)")
                .font(.headline)

            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
