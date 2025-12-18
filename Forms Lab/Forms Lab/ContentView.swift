//
//  ContentView.swift
//  Forms Lab
//
//  Created by star.stalker9160 on 11/12/2025.
//

import SwiftUI

struct ContentView: View {
    @State var name : String = ""
    @State var password : String = ""
    @State var email = ""
    @State var newUser = true

    var body: some View {
        Form {
            Section ("User Information") {
                Toggle(isOn: $newUser) {
                    Text("New user?")
                }
                TextField("email", text: $email)
                TextField("username", text: $name)
                TextField("passwrd", text: $password)
            }

            Section() {
                Button("Register") {
                    print("\(email), \(name), \(password)")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
