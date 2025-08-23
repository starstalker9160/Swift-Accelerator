import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var guessText = ""
    @State private var result = ""
    @State private var answer = Int.random(in: 1...100)

    var body: some View {
        ZStack {
            VStack(spacing: 25) {
                Text("Guess a number between 1 and 100")
                    .font(.title3)

                TextField("Name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)

                TextField("Enter your guess here", text: $guessText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.decimalPad)
                    .padding(.horizontal)

                Text(result)
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
                    .italic()
            }
            .padding()

            VStack {
                Spacer() // magic spacer to push the button down
                Button("Guess") {
                    let guess = Int(guessText) ?? -1
                    print(guess)
                    if guess == -1 {
                        result = "Error: Invalid input"
                    } else if guess < 1 || 100 < guess {
                        result = "Error: Guess exceeding limits"
                    } else if guess == answer {
                        result = "Congrats \(name)\n🎉"
                        answer = Int.random(in: 1...100)
                    } else if guess < answer {
                        result = "Too low. Try again"
                    } else if guess > answer {
                        result = "Too high. Try again"
                    }
                    guessText = ""
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.black)
                .foregroundColor(.white)
                .cornerRadius(8)
                .padding(.horizontal)
                .bold()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview { ContentView() }
