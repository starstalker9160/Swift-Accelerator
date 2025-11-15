//
//  ContentView.swift
//  Traffic Lights
//
//  Created by star.stalker9160 on 09/11/2025.
//

import SwiftUI
import Foundation

struct ContentView: View {
    @State var currentState: String = "y"
    @State var time: String = "00"

    let states: [String] = ["green", "yellow", "red"]

    let greenTime: Int = 30
    let yellowTime: Int = 5
    let redTime: Int = 20

    let rOriginal: Color
    let yOriginal: Color
    let gOriginal: Color

    let rLit: Color
    let yLit: Color
    let gLit: Color

    init() {
        rOriginal = Self.colFromHex("CC2936").opacity(0.25)
        yOriginal = Self.colFromHex("EAF051").opacity(0.25)
        gOriginal = Self.colFromHex("61D3B9").opacity(0.25)

        rLit = Self.colFromHex("CC2936")
        yLit = Self.colFromHex("EAF051")
        gLit = Self.colFromHex("61D3B9")
    }

    var body: some View {
        VStack {
            ZStack {
                VStack(spacing: 30) {
                    Text(time)
                        .padding()
                        .font(.title)
                        .foregroundColor(.white)
                        .background(Self.colFromHex("2A112D"))
                        .cornerRadius(12)
                }
            }
            .padding()
            .ignoresSafeArea()
            ZStack {
                VStack {
                    Circle()
                        .fill(currentState == "r" ? rLit : rOriginal)
                        .frame(width: 80, height: 80)

                    Circle()
                        .fill(currentState == "y" ? yLit : yOriginal)
                        .frame(width: 80, height: 80)

                    Circle()
                        .fill(currentState == "g" ? gLit : gOriginal)
                        .frame(width: 80, height: 80)
                }
            }
            .padding()
            .background(Self.colFromHex("2A112D"))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(Self.colFromHex("200123"))
        .onAppear {
            startLoop()
        }
    }

    private static func colFromHex(_ hex: String) -> Color {
        let v = Int64(hex.trimmingCharacters(in: .whitespacesAndNewlines)
            .replacingOccurrences(of: "#", with: ""), radix: 16) ?? 0
        return Color(
            red: Double((v >> 16) & 0xFF) / 255,
            green: Double((v >> 8) & 0xFF) / 255,
            blue: Double(v & 0xFF) / 255
        )
    }

    // I had to use async/await functions becaue i couldnt think of a way to do that simpler(?)
    // i had to copy the syntax for it from google, conceptually i do understand whats happening here

    func startLoop() {
        Task {
            await startSequence()
        }
    }

    private func countdown(from number: Int, state: String) async {
        await MainActor.run {
            currentState = state
        }

        for t in stride(from: number, through: 0, by: -1) {
            await MainActor.run {
                time = String(format: "%02d", t)
            }
            try? await Task.sleep(nanoseconds: 1_000_000_000)
        }

        await MainActor.run {
            time = "00"
        }
    }

    private func startSequence() async {
        while true {
            await countdown(from: redTime, state: "r")
            await countdown(from: yellowTime, state: "y")
            await countdown(from: greenTime, state: "g")
        }
    }
}

#Preview {
    ContentView()
}
