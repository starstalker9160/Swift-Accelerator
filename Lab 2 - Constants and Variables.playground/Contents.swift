/*:#  Constants and Variable Lab
 
 */

/*:
 Declare a constant called `friends` to represent the number of friends you have on social media. Give it a value between 50 and 1000. Print out the value by referencing your constant.
 */
let friends = 51
print(friends)
print("\n\n")
/*:
 Now assume you go through and remove a lot of your friends that aren't active on social media. Update your `friends` constant to a lower number than it currently is between 1 and 900.
 */
// friends -= 2
/*:
 Does the above code compile? Why not? Print your explanation to the console using the `print` function. Go back and delete your line of code that updates the `friend` constant to a lower number so that the playground will compile properly.
 */
print("No, as you cannot update the value of a constant after declaration")
print("\n\n")
/*:
 Declare a variable `age` and set it to your own age. Print `age` to the console.
 */
var age = 17
print(age)
print("\n\n")
/*:
 Now pretend you just had a birthday, and update the `age` variable accordingly. Print `age` to the console.
 */
age += 1
print(age)
print("\n\n")
/*:
 Create a double variable with a value of 1.1. Update it to 2.2, 3.3, and 4.4, printing out the value after each assignment (again by referencing the variable you created).
 */
var value : Double = 1.1
value = 2.2
print(value)
value = 3.3
print(value)
value = 4.4
print(value)
print("\n\n")
/*:
 Create a boolean variable and set it to `true`. Print the variable, then assign it a value of `false`, and print it again.
 */
var booleanVariable = true
print(booleanVariable)
booleanVariable = false
print(booleanVariable)
print("\n\n")
/*:
 Create two variables, one with a value of 0, the other with a value of 0.0. Try to assign the second variable to the first, and you will receive an error. Add the necessary type annotation that will allow the second variable to be assigned to the first.
 */
var variable1 = 0
var variable2 = 0.0

variable1 = Int(variable2)

print(variable1)
print("\n\n")
/*:
 Create a variable integer with a value of 1,000,000,000, ensuring that you format it so it is more readable (i.e. it's hard to read 1000000000, so make it easier to read).
 */
var bigNumber = 1_000_000_000
print(bigNumber)
print("\n\n")
