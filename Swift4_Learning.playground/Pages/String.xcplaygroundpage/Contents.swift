/*:
 [Content List](Content_List) | [Previous](@previous) | [Next](@next)
 ***
 */
/*:
 ## String
 */

import Foundation

//: Case 1: Multiple Lines

var multipleLineString = """
This
is
a
multipleLineString
"""

print(multipleLineString)

//: Case 2: String Count
let cafeNormal = "café"
let cafeCombining = "cafe\u{0301}"

cafeNormal.count
cafeCombining.count

cafeNormal.unicodeScalars.count
cafeCombining.unicodeScalars.count

//: Case 3: String Index

let firstIndex = cafeCombining.startIndex
let firstChar = cafeCombining[firstIndex]

let lastIndex = cafeCombining.index(before: cafeCombining.endIndex)
let lastChar = cafeCombining[lastIndex]

let thirdIndex = cafeCombining.index(cafeCombining.startIndex, offsetBy: 3)
let thirdChar = cafeCombining[thirdIndex]

let string = "This is an Apple"
let aIndex = string.index(of: "a")
if let aIndex = aIndex {
    let nounIndex = string[string.index(aIndex, offsetBy: 3)...]
}

//: Case 4: Reverse

let oriString = "String"
let reversedString = String(oriString.reversed())
print(oriString, "reverse:", reversedString)

//: Case 5:

/*:
 ***
 [Content List](Content_List) | [Previous](@previous) | [Next](@next)
 */



