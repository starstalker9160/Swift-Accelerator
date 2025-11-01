//
//  ContentView.swift
//  Temperature Converter
//
//  Created by star.stalker9160 on 30/10/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var cToF_: Bool = true
    @State private var input: String = ""
    @State private var out: String = ""
    
    var body: some View {
        VStack {
            Text("Temperature")
                .bold()
                .font(.title)

            // Drop down menu
            Menu {
                Button("Celsius to Fahrenheit") {
                    cToF_ = true
                    out = ""
                }
                Button("Fahrenheit to Celsius") {
                    cToF_ = false
                    out = ""
                }
            } label: {
                Label("Select an Option", systemImage: "chevron.down")
                    .padding()
                    .background(Color.blue.opacity(0.2))
                    .cornerRadius(8)
            }

            TextField("Enter \(cToF_ ? "℃" : "℉")", text: $input)
                .textFieldStyle(.roundedBorder)
                .padding()
                .keyboardType(.decimalPad)

            if !out.isEmpty {
                Text(out)
                    .font(.title2)
                    .padding(.top)
            }

            Button("Convert") { convert() }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .padding()
    }

    // moved the button logic into a function because app would crash if i try to do this inline
    func convert() {
        // copied this from google, this ensures the data is a valid float
        guard let value = Double(input) else {
            out = "Invalid input"
            return
        }

        if cToF_ {
            out = "\(String(format: "%.2f", value * 9 / 5 + 32)) ℉"
        } else {
            out = "\(String(format: "%.2f", (value - 32) * 5 / 9)) ℃"
        }
    }
}

#Preview {
    ContentView()
}
