import UIKit

var greeting = "Hello, playground"

let add: (Int, Int) -> () = {a, b in
    print("Result is \(a + b)")
}

func escapingClosure(firstNum: Int, secondNum: Int, action: @escaping (Int, Int) -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
        action(firstNum, secondNum)
    }
    print("Rosy")
}
escapingClosure(firstNum: 1, secondNum: 2, action: add)
