/*:
 [Content List](Content_List) | [Previous](@previous) | [Next](@next)
 ***
 */
/*:
 ## Switch
 */
import Foundation

//: Case 1: Range Case
let number = 7
switch number {
case 1...10:
    print("\(number)","is between 1 and 10")
default:
    break
}

//: Case 2: Where Case
switch number {
case _ where number % 2 == 0:
    print("\(number)", "is Even")
default:
    print("\(number)", "is Odd")
}

//: Case 3: Tuple Case
let coordinates = (x: 3, y: 3, z: 0)
switch coordinates {
case (let x, 0, 0):
    print("On the x-axis at x=\(x)")
case let (x, y, _) where y == x:
    print("Along the y=x line.")
default:
    break
}


/*:
 ***
 [Content List](Content_List) | [Previous](@previous) | [Next](@next)
 */
