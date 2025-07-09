import UIKit

// If - else
var age: Int = 19
if (age > 18) {
    print("You are eligible to vote\n")
} else {
    print("You are NOT eligible to vote\n")
}


// If - else if - else
let number: Int = 0
if (number > 0) {
    print("Positive\n")
} else if (number == 0) {
    print("Zero\n")
} else {
    print("Negative\n")
}


// Ternary operator
var isRaining: Bool = true
print(isRaining ? "Drive safely\n" : "It's not raining, enjoy your trip!\n")


// Comparison and boolean operators
print(1 <= 4)
print(!isRaining)
print((4+5 >= 9  && false) || true  ? "asdf" : "fdsa")
