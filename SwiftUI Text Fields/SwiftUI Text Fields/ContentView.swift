//
//  ContentView.swift
//  SwiftUI Text Fields
//
//  Created by star.stalker9160 on 30/10/2025.
//

import SwiftUI

// main page
struct ContentView: View {
    var body: some View {
        // Don't quite understand *how* this navigation thing works, but it works :D !
        NavigationView {
            VStack(spacing: 20) {
                NavigationLink(destination: ViewOne()) {
                    Text("Basic Form App")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                NavigationLink(destination: ViewTwo()) {
                    Text("Secure Login UI")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                NavigationLink(destination: ViewThree()) {
                    Text("Customise Behaviour")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                NavigationLink(destination: ViewFour()) {
                    Text("Dismiss Keyboard")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                Spacer()
            }
            .padding()
            .navigationTitle("Pick View")
        }
    }
}

// Individual views

// View 1 - Basic form
struct ViewOne: View {
    // This has something to do with the navigation control thing, again, not entierly sure
    @Environment(\.presentationMode) var presentationMode

    @State private var name: String = ""
    @State private var age: String = ""
    @State private var email: String = ""
    
    var body: some View {
        VStack {
            TextField("Name", text: $name)
                .textFieldStyle(.roundedBorder)
                .cornerRadius(10)
                .padding()
                .autocorrectionDisabled()
            Text("\(name)")
                .italic()
                .font(.caption)
            TextField("Age", text: $age)
                .textFieldStyle(.roundedBorder)
                .cornerRadius(10)
                .padding()
                .keyboardType(.numberPad)
            Text("\(age)")
                .italic()
                .font(.caption)
            TextField("Email", text: $email)
                .textFieldStyle(.roundedBorder)
                .cornerRadius(10)
                .padding()
                .keyboardType(.emailAddress)
            Text("\(email)")
                .italic()
                .font(.caption)
        }
        .padding()
        .navigationTitle("Basic Form App")
    }
}

// View 2 - Login form
struct ViewTwo: View {
    // This has something to do with the navigation control thing, again, not entierly sure
    @Environment(\.presentationMode) var presentationMode

    @State private var uname: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack {
            TextField("Username/Email Addr", text: $uname)
                .textFieldStyle(.roundedBorder)
                .cornerRadius(10)
                .padding()
                .keyboardType(.emailAddress)
                .autocorrectionDisabled()
            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
                .cornerRadius(10)
                .padding()
                .autocorrectionDisabled()
            Button("Login") {
                print("username:  \(uname)")
                print("password:  \(password)")
            }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
        .padding()
        .navigationTitle("Login")
    }
}

// View 3 - Custom behaviour form
struct ViewThree: View {
    // This has something to do with the navigation control thing, again, not entierly sure
    @Environment(\.presentationMode) var presentationMode

    @State private var one: String = ""
    @State private var two: String = ""
    @State private var three: String = ""
    
    var body: some View {
        VStack {
            TextField("No auto correct", text: $one)
                .padding()
            TextField("No auto capitalisation", text: $two)
                .padding()
            TextField("Rounded border", text: $three)
                .textFieldStyle(.roundedBorder)
                .cornerRadius(10)
                .padding()
        }
        .padding()
        .navigationTitle("Custom Behaviour")
    }
}

// View 4 - Dissmiss keyboard form
struct ViewFour: View {
    // This has something to do with the navigation control thing, again, not entierly sure
    @Environment(\.presentationMode) var presentationMode

    @State private var input: String = ""
    @FocusState private var isFocused: Bool
    
    var body: some View {
        VStack {
            TextField("Text", text: $input)
                .textFieldStyle(.roundedBorder)
                .cornerRadius(10)
                .padding()
                .focused($isFocused)
            Button("Done") {
                isFocused = false
            }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
        .padding()
        .navigationTitle("Keyboard Dismissal")
    }
}

#Preview {
    ContentView()
}
