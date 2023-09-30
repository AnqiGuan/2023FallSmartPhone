import UIKit

var greeting = "Hello, playground"

var x, y, z : Int

let 😊 = "langhing"

print(😊)

let name = "Angie"

var greet = "Hello \(name), are you \(😊)?"

let 🐶 = "dog" ; let 🐱 = "cat"

let shortInt : UInt8 = 5

let hello = name == "Angie" ? "Hello Angie" : "Hello Stranger"

var intArray : [Int] = []
var intArray1 = [1,2,3,4,5,6]
intArray.insert(5, at: 0)
print(intArray[0])

var fruits = ["Apple", "Banana", "Mango", "Graps"]

for fruit in fruits {
    print(fruit)
}

for (index, fruit) in fruits.enumerated(){
    print("Index = \(index) Fruit Name = \(fruit)")
}

let optionalInt : Int?

optionalInt = 5

print("Optional Int = \(optionalInt)")

// Set
let letters = Set<Character>()

let cities : Set = ["Seattle", "SFO", "LA", "Vegas"]

let airportCode = ["SFO" : "San Francisco", "SEA" : "Seattle", "DEL" : "Delhi"]

print(airportCode["SEA"])

var errorCodes : [ Int : String ] = [:]
errorCodes.updateValue("Not found", forKey: 404)

for value in errorCodes.values{
    print(value)
}

var a = 0;
var b = 5;
while (a < b){
    print(a)
    a += 1
}

let char : Character = "A"

switch char {
case "a", "A":
    print("letter is a")
case "b":
    print("letter is b")
default:
    print("Letter is something else.")
}

func canThrowError() throws{
    // this function may or may not throw an error
    print("Angie")
}
do{
    try canThrowError()
} catch{
    
}

for index in 1...5{
    print("I am here index = \(index)")
}

struct Student{
    let name: String
    let studentID : Int
    var currentSemester : String
}

var angie = Student(name: "Angie", studentID: 0027, currentSemester: "Fall2023")
print(angie.currentSemester)


enum PrimaryColors {
    case red
    case green
    case blue
}

print(PrimaryColors.green)

class FileNameClass {
    var fileName = "SomeDoc.docx"
}

class FileSystem {
    lazy var fileName = FileNameClass()
    var array : [String] = []
}

var files = FileSystem()
files.array.append("Angie.doc")
files.array.append("Sharon.doc")
print(files.fileName.fileName)

let fallSem = true
var studentCount = 0
var students : Int {
    get{
        return fallSem ? 500 : 200;
    }
    
    set{
        studentCount = newValue
    }
        
}
print(studentCount)
print(students)
students = 350
print(studentCount)
print(students)

class MessageCounter {
    var totalMsg = 0{
        willSet(newTotalMsg) {
            print("About to set the new value to \(newTotalMsg)")
        }
        didSet{
            print("Set the value from \(oldValue) to \(totalMsg)")
        }
    }
}

let msgCounter = MessageCounter()
print("I am before")
msgCounter.totalMsg += 1;
print("I am after")
msgCounter.totalMsg += 3

print(msgCounter.totalMsg)

func voidFunction(){
    print("I am here")
}

func voidFunctionWithPara(name:String, studentID : Int) {
    print("Name: \(name) StudentID: \(studentID) ")
}

voidFunctionWithPara(name: "Angie", studentID: 0027)


func simpleFunctionWithReturnValues() -> String{
    return "Test"
}

print(simpleFunctionWithReturnValues())


func simpleFunctionWithGuard() -> Int{
    var intValue : Int?
    intValue = 35;
    guard let intValue = intValue else{
        return -1
    }
    print(intValue)
    return intValue;
}

simpleFunctionWithGuard()

//let someClosure = {params} -> returnType in {
//    statements
//}


let addFunc = {( a : Int, b : Int) in
    return a + b
}

let addFunc1 = {( a : Int, b : Int) in
    return a + b
}

let addFunc2 = {( a : Int, b : Int) in
     a + b
}

print(addFunc2(4,5))












