//
//  ContentView.swift
//  Speeding Calculator
//
//  Created by star.stalker9160 on 24/07/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State var speed = 100.0
    @State var speedLimit = ""
    
    var body: some View {
        HStack {
            Text("Speed Limit: ")
            TextField("120", text: $speedLimit)
                .keyboardType(.decimalPad)
                .padding(6)
                .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray, lineWidth: 1)
                )
        }
        
        VStack {
            Slider(value: $speed, in: 0...200, step: 1) {
                Text("Speed")
            } minimumValueLabel: {
                 Text("0")
            } maximumValueLabel: {
                Text("200")
            }
            
            let _speedLimit: Int = Int(speedLimit) ?? 120
            let _speed: Int = Int(speed)
            
            // unholy turnary to set the fine amount, setting to -1 in case of 50+ kmph
            let fine = (_speedLimit < _speed && _speed <= _speedLimit + 20) ? 400 :
                (_speedLimit + 20 < _speed && _speed <= _speedLimit + 30) ? 600 :
                (_speedLimit + 30 < _speed && _speed <= _speedLimit + 40) ? 800 :
                (_speedLimit + 40 < _speed && _speed <= _speedLimit + 50) ? 1000 :
                (_speedLimit + 50 < _speed) ? -1 :
                0
            
            VStack {
                HStack {
                    Text("Your speed : ")
                    Text("\(Int(speed))")
                        .foregroundStyle(speed <= 120 ? Color.green : Color.red)
                }
                HStack {
                    Text("Fine amount : ")
                    Text(fine == -1 ? "Confiscation" : (fine > 0 ? "\(fine)" : "N/A"))
                        .foregroundColor(fine == -1 ? Color.red : Color.black)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
