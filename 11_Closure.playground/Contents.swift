import Cocoa

// Closure와 함수의 비교
// 함수는 이름이 있는 closure

// 함수
func sumFunction(a: Int, b: Int) -> Int{
    return (a + b)
}

var sumResult: Int = sumFunction(a: 10, b: 20)
print(sumResult)


// Closure
var sumClosure:(Int, Int) -> Int = {(a: Int, b: Int) -> Int in
    return (a + b)
}

sumResult = sumClosure(20,10)

print(sumResult)

// Guard

func divide0(number: Int){
    if number == 0 {
        print("0으로 나눌 수 없습니다")
    }else{
        let result = 100/number
        print(result)
    }
}

divide0(number: 0)
divide0(number: 10)

func divide1(number:Int){
    guard number != 0 else {
        print("0으로 나눌 수 없습니다")
        return
    }
    let result = 100/number
    print(result)
}

divide1(number: 0)
divide1(number: 100)

func doubleValue1(input: Int?) -> Int?{
    if let i = input{
        return i * 2
    }
    return nil
}

print(doubleValue1(input: 4)!)

func doubleValue2(input: Int!) -> Int!{
    guard let i = input else {
        return nil
    }
    return i * 2
}

print(doubleValue2(input: 4)!)


// Extension
// 구조체 , 클래스, 열거형, 프로토콜 타입에 새로운 기능을 추가할 수 있다.

// Int에 extension을 적용하여 property 추가

extension Int{
    var isEven: Bool{
        return self % 2 == 0
    }
    var isOdd: Bool{
        return self % 2 == 1
    }
}

1.isEven //false
var number: Int = 3
number.isEven //false

extension Int{ //대외,대내
    func multiply(by n: Int) -> Int{
        return self * n
    }
}

3.multiply(by: 3) //9
