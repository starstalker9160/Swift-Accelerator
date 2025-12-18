//
//  ContentView.swift
//  Alert and Action
//
//  Created by star.stalker9160 on 18/12/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    @State private var alertMessage = ""

    @State private var showActionSheet = false
    @State private var selectedAction = "-"

    var body: some View {
        VStack(spacing: 25) {
            Text("Alerts & Action Sheets")
                .font(.largeTitle)
                .bold()

            Text("Selected Action: \(selectedAction)")
                .font(.title3)
                .foregroundColor(.gray)

            Button("Show Alert") {
                alertMessage = "hello!"
                showAlert = true
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(10)

            Button("Show Action Sheet") {
                showActionSheet = true
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .padding()

        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Hiii :3"),
                message: Text(alertMessage),
                dismissButton: .default(Text("go away"))
            )
        }

        .actionSheet(isPresented: $showActionSheet) {
            ActionSheet(
                title: Text("Hey"),
                message: Text("do you wanna be friends???"),
                buttons: [
                    .default(Text("yes")) {
                        selectedAction = "yes"
                    },
                    .default(Text("maybe")) {
                        selectedAction = "maybe"
                    },
                    .destructive(Text("no")) {
                        selectedAction = "no"
                    },
                    .cancel()
                ]
            )
        }
    }
}

#Preview {
    ContentView()
}
