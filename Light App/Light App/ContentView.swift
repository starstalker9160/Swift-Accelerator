//
//  ContentView.swift
//  Light App
//
//  Created by star.stalker9160 on 09/07/2025.
//

import SwiftUI

struct ContentView: View {
    @State var isOn = false
    
    var body: some View {
        ZStack {
            Color(isOn ? .red : .black)
            Text("tap screen to change colour")
                .foregroundStyle(Color(.white))
        }
        .ignoresSafeArea()
        .onTapGesture {
            isOn = !isOn
            // alternatively;
            // isOn.toggle()
        }
    }
}

#Preview {
    ContentView()
}
