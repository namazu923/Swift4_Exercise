/*:
 [Content List](Content_List) | [Previous](@previous) | [Next](@next)
 ***
 */
/*:
 ## Functions
 */
import Foundation
//: Case 1: Parameter's Default Value
func printMultipleOf(_ multiplier: Int, and value: Int = 1) -> (a: Int, b: Int, ab: Int) {
    print("\(multiplier) * \(value) = \(multiplier * value)")
    return (multiplier, value, multiplier * value)
}
let resultA = printMultipleOf(7)
let resultB = printMultipleOf(7, and: 2)

//: Case 2: Change Parameter's value in Function
var originalValue = 5
print("originalValue before changing: \(originalValue)")

// Pay attention to 'inout' and '&' singal
func multiply(_ multiplier: inout Int, and value: Int) -> Int{
    multiplier = multiplier * value
    return multiplier
}
multiply(&originalValue, and: 2)
print("originalValue after multiplying: \(originalValue)")

func divide(_ divider: inout Int, and value: Int) -> Int{
    divider = divider / value
    return divider
}
divide(&originalValue, and: 2)
print("originalValue after dividing: \(originalValue)")



//: Case 3: Use Function as parameter

typealias type = (inout Int, Int) -> (Int)

func printResult(_ function: type, _ originalValue: inout Int, and value: Int ) {
    print("printResult:\(function(&originalValue, value))")
}

printResult(multiply, &originalValue, and: 3)
printResult(divide, &originalValue, and: 3)


/*:
 ***
 [Content List](Content_List) | [Previous](@previous) | [Next](@next)
 */
