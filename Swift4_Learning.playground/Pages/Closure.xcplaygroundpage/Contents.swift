/*:
 [Content List](Content_List) | [Previous](@previous) | [Next](@next)
 ***
 */
/*:
 ## Closure
 */

import Foundation

//: Case 1: Closure

var multiplyClosureComplex: (Int, Int) -> Int
var multiplyClosureSimple: (Int, Int) -> Int

multiplyClosureComplex = { (a: Int, b: Int) -> Int in
    return a * b
}
let resultComplex = multiplyClosureComplex(2, 3)

multiplyClosureSimple = {
    $0 * $1
}
let resultSimple = multiplyClosureSimple(2, 3)

//: Case 2: Void Closure
let voidClosure: () -> Void = {
    print("void Closure")
}
voidClosure()

//: Case 3: Capturing
func countingClosure() -> () -> Int {
    var counter = 1
    let incrementingCounter = { () -> Int in
        counter = counter + 1
        return counter
    }
    return incrementingCounter
}
let counter1 = countingClosure()
let counter2 = countingClosure()

counter1()
counter1()
counter1()
counter2()
counter2()
counter2()

//: Case 4: Reference Website:
//: http://goshdarnclosuresyntax.com

var array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
//: Case 5: Sort
let sortedArray = array.sorted(by: {a, b in
   a > b
})
print(sortedArray)

//: Case 6: Filter
let filteredArray = array.filter{ $0 > 5}
print(filteredArray)

//: Case 7: Map
let mapedArray = array.map{ num -> Int in
    return num * 2
}
print(mapedArray)

//: Case 8: Reduce
let sum = array.reduce(0, {result, num -> Int in
    return result + num
})
print(sum)

let scoreDictionary = [4: 100, 1: 95, 7: 90, 5: 85] // [personNum: score]
let totalScore = scoreDictionary.reduce(0) {
    result, pair -> Int in
    return result + pair.key * pair.value
}
print(totalScore)



/*:
 ***
 [Content List](Content_List) | [Previous](@previous) | [Next](@next)
 */



