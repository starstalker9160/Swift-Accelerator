//
//  ContentView.swift
//  Movie Tickets
//
//  Created by star.stalker9160 on 01/11/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var ticketCount: Double = 1
    @State private var isDiscounted: Bool = false

    let price: Double = 35.0

    var calculatedSubtotal: Double {
        let subtotal = (price * ticketCount)
        return isDiscounted ? subtotal * (0.6) : subtotal
    }

    var finalTotal: Double { calculatedSubtotal * (1.05) }

    var body: some View {
        VStack {
            Text("Movie Tickets")
                .font(.title)
                .bold()

            VStack(alignment: .leading, spacing: 25) {
                TextField("Enter your name", text: $name)
                    .cornerRadius(20)

                VStack() {
                    Text("Number of Tickets: \(Int(ticketCount))")
                    Slider(value: $ticketCount, in: 1...10, step: 1)
                }

                Toggle("Apply 40% Discount", isOn: $isDiscounted)
                    .tint(.green)

                VStack() {
                    Text("Subtotal: \(price * ticketCount, specifier: "%.2f") AED")
                    if isDiscounted {
                        Text("Discounted Subtotal: \(calculatedSubtotal, specifier: "%.2f") AED")
                            .foregroundColor(.blue)
                    }
                    Text("Final Amount (incl. 5% VAT): \(finalTotal, specifier: "%.2f") AED")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.top, 8)
                }

                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
