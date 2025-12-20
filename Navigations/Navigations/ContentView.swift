//
//  ContentView.swift
//  Navigations
//
//  Created by star.stalker9160 on 20/12/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                NavigationLink {
                    FahrenheitToCelsiusView()
                } label: {
                    Text("Fahrenheit → Celsius")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                
                NavigationLink {
                    CelsiusToFahrenheitView()
                } label: {
                    Text("Celsius → Fahrenheit")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Temperature Converter")
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

