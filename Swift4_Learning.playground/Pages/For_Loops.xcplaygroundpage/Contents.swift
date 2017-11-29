/*:
 [Content List](Content_List) | [Previous](@previous) | [Next](@next)
 ***
 */
/*:
 ## For Loops
 */
import Foundation

//: Case 1: for-where loops
print("--- Print separator terminator ---")
var range = 1...10

for i in range where i % 2 == 1 {
    print("number","\(i)", separator: "-", terminator: ".")
}
print()

range = 1...3

//: Case 2: continue-outer
print("--- Normal Continue ---")
for i in range {
    for j in range {
        if j == 2 {continue}
        print("\(i)","\(j)",separator:":")
    }
}

print("--- Outer_1 Continue ---")
outer_1: for i in range {
    outer_2: for j in range {
        if j == 2 {continue outer_1}
        print("\(i)","\(j)",separator:":")
    }
}

print("--- Outer_2 Continue ---")
outer_1: for i in range {
    outer_2: for j in range {
        if j == 2 {continue outer_2}
        print("\(i)","\(j)",separator:":")
    }
}

/*:
 ***
 [Content List](Content_List) | [Previous](@previous) | [Next](@next)
 */
