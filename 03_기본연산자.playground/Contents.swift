import UIKit

//Tuple을 사용한 할당 연산자
let (x1,y1) = (1,2)
print(x1,y1)

let(x2,y2) = (3,"kim")

print(x2,y2)

// 사칙 연산자

print(1 + 2)
print(3 - 2)
print(4 * 3)
print(10 / 3)
print(10.0 / 3.0)
print(9 % 4)

// 단항 음수 연산자

let one = 1
let minusOne = -one
let plusOne = +one
print(one,minusOne,plusOne)

// 비교 연산자

1 == 1
2 != 1
1 > 2
1 >= 2
2 <= 1

let name = "world"
if name == "world"{
    print("Hello World!")
}else{
    print("I'm sorry \(name), but I don't recognize you.")
}

(1, "zebra") < (2, "apple")
(3, "apple") < (3, "bird")
(4, "dog") == (4, "dog")
("blue", -1) < ("purple" , -1)
//("blue", false) < ("blue", true) //bool은 비교대상이 아니다

// 삼항 조건 연산자
let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20) //true이면 50출력 아니면 20 출력

print(rowHeight)


// NIL 병합 연산자
let defaultColorName = "red"
var userDefinedColorName: String? // 이 값의 default 값은 nil이다 <- optional 변수
var colorNameToUse = userDefinedColorName ?? defaultColorName //userDefinedColorName이 'nil'이면 defaultColorName 대신 출력한다.
print(colorNameToUse)

userDefinedColorName = "green"

colorNameToUse = userDefinedColorName ?? defaultColorName //userDefinedColorName이 'nil'이면 defaultColorName 대신 출력한다.
print(colorNameToUse)


// 범위 연산자

for i in 1...10{
    print(i)
}

// 1에서 10까지의 합 구하기
var sum1 : Int = 0
for i in 1...10{
    sum1 += i
}
print("1~10의 합계: ", sum1)

for i in 1..<10 {
    print("5 X \(i) = \(i*5)")
}

//For 문을 이용하여 인원번호와 이름 출력하기 (인원번호는 1번 부터)
let names = ["Anna","Alex","Brian","Jack"]

for name in 0..<names.count{
    
    print("Person \(name+1) is called \(names[name])")
 
}

//배열을 다른 배열로 할당후 출력하기
let a1 = [-1,-2,-3,0,1,2,3]
let b1 = a1[2...]
print(b1)
print(b1.count)
print(a1[1])
print(b1[2]) //b1을 출력하고자 하면 a1의 길이와 순서에 맞추어야 출력됨.

print("------------")

for i in 2..<a1.count{
    print(b1[i])
}

let b2 = a1 [...2]
let b3 = a1 [..<2]

print(names)

for name in names[2...]{
    print(name)
}

for name in names[...2]{
    print(name)
}
for name in names[..<2]{
    print(name)
}

let range = ...5
print(range)
range.contains(7)
range.contains(3)
range.contains(-1)
range.contains(-100)

// 논리 부정 연산자
let allowedEntry = false
if !allowedEntry{
    print("Access denied!")
}

// 논리 곱연산자
let enteredDoorCode = true
let passedRetinaScan = false

if enteredDoorCode && passedRetinaScan {
    print("Welcome")
}else{
    print("Access denied!")
}

if enteredDoorCode || passedRetinaScan {
    print("Welcome")
}else{
    print("Access denied!")
}
