/*:
 [Content List](Content_List) | [Previous](@previous) | [Next](@next)
 ***
 */
/*:
 ## Arrays
 */
import Foundation

//: Case 1: Basic handle elements of Array

var numbers: [Int] = [10, 11, 12, 13, 14, 15]
numbers.append(16)
numbers =  numbers + [17, 18]
numbers.insert(0, at: 0)
numbers.removeFirst()

print("Array: ", numbers)
print("Array count: ", numbers.count, "first: ", numbers.first as Any , "last: ", numbers.last as Any)
print()

//: Case 2: min & max

print("Array min: ", numbers.min()!)
print("Array max: ", numbers.max()!)
print()

//: Case 3: range index
print("Array index 3~5: ", numbers[3...5])
numbers[3...5] = []
print("Array after remove index 3~5: ", numbers)
numbers[3...5] = [13, 14, 15]
print()

//: Case 4: swap
numbers.swapAt(0, 1)
numbers.swapAt(0, 1)

//: Case 5: loop
for (index, value) in numbers.enumerated() {
    print("Array Index: ", index, "Value; ", value )
}
print()

//: Case 6: drop
let dropFirst = numbers.dropFirst(3)
print("Drop first 3: ", dropFirst)
let dropLast = numbers.dropLast(3)
print("Drop last 3: ", dropLast)
print()

//: Case 7: prefix & suffix
let prefix = numbers.prefix(upTo: 3)
print("prefix upTo 3: ", prefix)
let suffix = numbers.suffix(from: 3)
print("suffix from 3: ", suffix)
print()

//: Case 8: get Index
print(numbers.index(of: 15) as Any)






/*:
 ***
 [Content List](Content_List) | [Previous](@previous) | [Next](@next)
 */
