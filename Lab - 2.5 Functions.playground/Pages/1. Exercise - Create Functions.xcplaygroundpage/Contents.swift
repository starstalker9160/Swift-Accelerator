/*:
## Exercise - Create Functions

 Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the function and observe the printout.
 */
// NOTE:
// im using private functions everywhere because i dont want them on the next pgae/anywhere out of scope
// i know about scope and private/public declaration because i started programming in C++ then moved to C# lol 🤣

private func introduceMyself() {
    print("My name is Abyaz :D")
}

introduceMyself()
//:  Write a function called `magicEightBall` that generates a random number and then uses either a switch statement or if-else-if statements to print different responses based on the random number generated. `let randomNum = Int.random(in: 0...4)` will generate a random number from 0 to 4, after which you can print different phrases corresponding to the number generated. Call the function multiple times and observe the different printouts.
import Foundation

private func magicEightBall() {
    let randomNum = Int.random(in: 0...4)

    switch randomNum{
        case 1:
            print("Ask again later")
        case 2:
            print("My sources say no")
        case 3:
            print("It is certain")
        default:
            print("Yes!")
    }
}

magicEightBall()
/*:
page 1 of 6  |  [Next: App Exercise - A Functioning App](@next)
 */
