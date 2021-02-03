import UIKit

// Optional
// : 값이 있을수도 있고, 없을 수도 있다.
// : nil값을 포함할 수도 있고, 안할 수도 있다.

var constantNum = 100
//let optionalConstant = nil //nil 을 포함할 수 없다.
let optionalConstant : Int! = nil
let optionalConstant1 : Int? = nil

var constantNum1 : Int! = 100
print(constantNum1 + 10)

constantNum1 = nil
//contantNum1 + 1 //error nil값은 더해지지 않는다.
//print(contantNum1!) //강제로 ! optional로 뽑아준다 하지만 nil값을 풀라면 Error 가 발생한다.

switch constantNum1 {//none some으로 nil 값 체크 가능하다. (value값은 있는 값이다)
case .none:
    print("This optional value is null")
case .some(let value):
    print("Value is \(value)")
}

// -------
var constantNum2: Int? = 100

print(constantNum2!+10)//! 인경우에는 바로 계산이 가능하지만 ?는 unwrapping을 해야한다.

switch constantNum2 {//none some으로 nil 값 체크 가능하다. (value값은 있는 값이다)
case .none:
    print("This optional value is null")
case .some(let value):
    print("Value is \(value)")
}

// ------

var myName2: String? = "James"
var yourName2: String? = nil

if let name = myName2, let friend = yourName2 {
    print("\(name) and \(friend)")//두조건이 만족해야 출력이 된다.
}

yourName2 = "cathy"

if let name = myName2, let friend = yourName2 {
    print("\(name) and \(friend)")//두조건이 만족해야 출력이 된다.
}
