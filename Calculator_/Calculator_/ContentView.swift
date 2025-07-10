//
//  ContentView.swift
//  Calculator_
//
//  Created by star.stalker9160 on 10/07/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State var num1: String = ""
    @State var num2: String = ""
    
    @State var result: String = ""
    
    var body: some View {
        VStack {
            TextField("num1", text: $num1)
                .keyboardType(.decimalPad)
                .font(.title2)
                .padding(6)
                .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray, lineWidth: 1)
                )
            TextField("num2", text: $num2)
                .keyboardType(.decimalPad)
                .font(.title2)
                .padding(6)
                .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray, lineWidth: 1)
                )
            Spacer().frame(height: 30)
            Button("Calculate!") {
                if let n1 = Double(num1), let n2 = Double(num2) {
                    result = """
                        Sum:\t\(n1 + n2)
                        Difference:\t\(n1 - n2)
                        Product:\t\(n1 * n2)
                        Quotient:\t\(n2 != 0 ? "\(n1 / n2)" : "Cannot devide by zero")
                    """
                    // cant do remainder coz they're both floats, quotient itself will have decimal value
                    // to have remainder, convert to Int() instead and do the same
                } else {
                    result = "Invalid Input!!"
                    print("[ FAIL ] Invalid input")
                }
            }
            .frame(width: 170, height: 40)
            .font(.title)
            .background(Color(.blue))
            .foregroundStyle(Color(.white))
            .cornerRadius(8)
            
            Text("\n\n\(result)")
                .font(.title3)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
