//
//  ContentView.swift
//  Final Project
//
//  Created by star.stalker9160 on 24/07/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var guessText = ""
    @State private var result = ""
    @State private var answer = Int.random(in: 1...100)

    var body: some View {
        VStack(spacing: 25) {
            Text("Guess a number between 1 and 100")
                .font(.title3)

            TextField("Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)

            TextField("Enter your guess here", text: $guessText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
                .padding(.horizontal)

            Button("Guess") {
                let guess = Int(guessText) ?? -1
                if guess == -1 {
                    result = "That's not a number, genius"
                } else if guess == answer {
                    result = "Good job \(name.isEmpty ? "whoever you are" : name)"
                    answer = Int.random(in: 1...100)
                } else if guess < answer {
                    result = "Too low. Try again \(name == "" ? "whoever you are" : name)"
                } else if guess > answer {
                    result = "Too high. Try again \(name == "" ? "whoever you are" : name)"
                }
                guessText = ""
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(8)

            Text(result)
                .font(.subheadline)
                .italic()
                .foregroundColor(.gray)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
