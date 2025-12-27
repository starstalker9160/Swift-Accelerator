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


struct FruitDetailView: View {
    let fruit: Fruit

    var body: some View {
        VStack(spacing: 20) {
            Text(fruit.emoji)
                .font(.system(size: 80))

            Text(fruit.name)
                .font(.largeTitle)
                .bold()

            Text(fruit.desc)
                .font(.body)
                .padding()

            Spacer()
        }
        .navigationTitle(fruit.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}


struct ContentView: View {
    var fruits = [
        Fruit(emoji: "🍎", name: "Apple", desc: "Keeps the doctor away"),
        Fruit(emoji: "🍌", name: "Banana"),
        Fruit(emoji: "🍇", name: "Grapes", desc: "Sweet? i guess?")
    ]

    var body: some View {
        NavigationStack {
            List(fruits) { fruit in
                NavigationLink {
                    FruitDetailView(fruit: fruit)
                } label: {
                    HStack {
                        Text(fruit.emoji)
                        Text(fruit.name)
                    }
                }
            }
            .navigationTitle("Fruits")
        }
    }
}

#Preview {
    ContentView()
}
