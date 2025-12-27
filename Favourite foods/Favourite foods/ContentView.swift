//
//  ContentView.swift
//  Favourite foods
//
//  Created by star.stalker9160 on 27/12/2025.
//

import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var emoji: String
    var name: String
    var desc: String = "I liek this"
}

struct ContentView: View {
    var fruits = [
        Fruit(emoji: "🍎", name: "Apple", desc: "Keeps the doctor away"),
        Fruit(emoji: "🍌", name: "Banana"),
        Fruit(emoji: "🍇", name: "Grapes", desc: "Sweet? i guess?"),
    ]
    var body: some View {
        NavigationStack{
            List(fruits) { fruit in
                HStack {
                    Text(fruit.emoji)
                    Text(fruit.name)
                }
            }
            .navigationTitle("Fruits")
        }
    }
}

#Preview {
    ContentView()
}
