import UIKit

var greeting = "Hello, playground"

let add: (Int, Int) -> () = {a, b in
    print("Result is \(a + b)")
}

//Escaping closure

func escapingClosure(firstNum: Int, secondNum: Int, action: @escaping (Int, Int) -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
        action(firstNum, secondNum)
    }
    print("Rosy")
}
escapingClosure(firstNum: 1, secondNum: 2, action: add)

//Nonescaping closure

func nonescapingClosure(firstNum: Int, secondNum: Int, action: (Int, Int) -> Void) {
    action(firstNum, secondNum)
    print("Rosy")
    print("Inside NOn escaping")
}
nonescapingClosure(firstNum: 2, secondNum: 3, action: add)

print("M1-create index file")
print("M2- add wanda's feature")
print("M3- add hagrid's feature")
print("M4- add nina's feature")
print("Hi Rosy")
print("nn")
print("in master branch....")
print("in rebase branch 1")
