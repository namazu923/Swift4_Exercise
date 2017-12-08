/*:
 [Content List](Content_List) | [Previous](@previous) | [Next](@next)
 ***
 */
/*:
 ## Classes
 */

import Foundation

//: Case 1: required init
class Person {
    var name: String = ""
    
    // required:
    // Every class inherits from this class should implement this initializer
    required init(_ name: String) {
        self.name = name
    }
}

class Student: Person {
    var grade: Int
    
    init(grade: Int, name: String) {
        self.grade = grade
        super.init(name)
    }
    
    required init(_ name: String) {
        self.grade = 0
        super.init(name)
    }
}
let studentA = Student(grade: 3, name: "Joy")
let studentB = Student("Ketty")

//: Case 2: convenience init
class Animal {
    var height: Int
    
    init(_ height: Int) {
        self.height = height
    }
}

class Pet: Animal {
    var nickName: String
    
    // convenience:
    // can't call super.init in a convenience init method
    convenience init() {
        self.init(nickName: "pet", height: 0)
    }
    
    init(nickName: String, height: Int) {
        self.nickName = nickName
        super.init(height)
    }
}
let cat = Pet(nickName: "mew", height: 50)
let dog = Pet()

//: Case 3: deinit (ARC)
class Book {
    var name: String
    var setBook: Book?
    weak var wSetBook: Book?
    
    init(_ name: String) {
        self.name = name
    }
    
    deinit {
        print("""
            Book "\(name)" is removed.
        """)
    }
}
var bookA: Book? = Book("Inside Out")
var bookB = bookA
/***
 Here books direct to Book("Inside Out") while not bookA or bookB
 ***/
var books = [bookA, bookB]
bookA = nil
bookB = Book("Monster University")
// books doesn't change
books
books = []
// now Book("Inside Out") deinit

//: Case 4: weak
var bookC: Book? = Book("Book C")
var bookD: Book? = Book("Book D")

bookC?.setBook = bookD
// bookD?.setBook direct to Book("Book C"), not bookC
bookD?.setBook = bookC

// Book("Book C") & Book("Book D") won't be removed cause the ARC is always 1
bookC = nil
bookC?.setBook
bookD?.setBook
bookD = nil

var bookE: Book? = Book("Book E")
var bookF: Book? = Book("Book F")

bookE?.wSetBook = bookF
bookF?.wSetBook = bookE

// Book("Book C") & Book("Book D") will be removed cause the ARC is 0 now ,
//  as wSetBook is a weak var which doesn't do ARC
bookE = nil
bookF?.wSetBook
bookF = nil

/*:
 ***
 [Content List](Content_List) | [Previous](@previous) | [Next](@next)
 */





