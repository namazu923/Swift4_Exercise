/*:
 [Content List](Content_List) | [Previous](@previous) | [Next](@next)
 ***
 */
/*:
 ## Property
 */

import Foundation

//: Case 1: store property & observe (observe is only for store property)
var storeProperty = "store" {
    willSet {
        print("storeProperty changes from \(storeProperty) to \(newValue)")
    }
}



var evenNum = 4 {
    didSet {
        if evenNum % 2 == 0 {
            print("Even bumber change to \(evenNum)")
        } else {
            evenNum = oldValue
            print("This is not an even number")
        }
    }
}
evenNum = 6
evenNum = 5
evenNum


//: Case 2: calculate property
var calProperty: String {
    get {
        return storeProperty
    }
    set {
        storeProperty = newValue
    }
}
calProperty
calProperty = "calculate"
storeProperty

//: Case 3: lazy property
class PropertyClass {
    lazy var lazyProperty: Bool = {
        return true
    }()
}

let classA = PropertyClass()
print(classA.lazyProperty)



/*:
 ***
 [Content List](Content_List) | [Previous](@previous) | [Next](@next)
 */
