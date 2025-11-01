//
//  ContentView.swift
//  BMI Calc
//
//  Created by star.stalker9160 on 01/11/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var age: Double = 25
    @State private var weight: String = ""
    @State private var height: String = ""
    @State private var bmi: String = ""
    @State private var bmiMessage: String = ""
    
    var body: some View {
        VStack {
            Text("BMI Calculator")
                .font(.title)
                .bold()

            VStack(alignment: .leading, spacing: 20) {
                TextField("Enter your height (m)", text: $height)
                    .keyboardType(.numberPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                TextField("Enter your weight (kg)", text: $weight)
                    .keyboardType(.decimalPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                VStack(alignment: .leading) {
                    Text("Adjust Age: \(Int(age))")
                    Slider(value: $age, in: 1...100, step: 1)
                }

                VStack {
                    Spacer().frame(height: 30)
                    Text(bmi)
                        .font(.headline)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity)
                    Text(bmiMessage)
                        .font(.headline)
                        .foregroundColor(.blue)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity)
                }
                .frame(height: 100)

                Spacer()

                Button(action: calculateBMI) {
                    Text("Calculate BMI")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
            }
            .padding()
        }
    }

    func calculateBMI() {
        // reusing the code for ensuring valid type conversion
        guard let weightValue = Double(weight), weightValue > 0 else {
            bmiMessage = "Please enter a valid weight."
            return
        }
        guard let heightValue = Double(height), heightValue > 0 else {
            bmiMessage = "Please enter a valid height."
            return
        }

        let bmiValue = weightValue / (heightValue * heightValue)
        bmi = String(format: "%.2f", bmiValue)

        switch bmiValue {
        case ..<18.5:
            bmiMessage = "Underweight - You should eat more and consult a nutritionist"
        case 18.5..<25:
            bmiMessage = "Normal - Great job! Keep maintaining a healthy lifestyle"
        case 25..<30:
            bmiMessage = "Overweight - Consider regular excersise and a balanced diet"
        // im using default here because all other scenarios are accounted for 🤞
        default:
            bmiMessage = "Obese - It's important to consult your doctor and create a health plan"
        }
    }
}

#Preview {
    ContentView()
}
