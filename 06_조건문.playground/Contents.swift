import UIKit

var isCar = true
var isNew = true

if isCar,isNew{
    print("New Car~")
}
isNew = false
if isCar,isNew{
    print("New Car~")
}else{
    print("Old Car")
}

// Unwrapping if문
let price: Double? = 5.99//nil값을 수용하는 Double (포장되어있음)

// 강제적 Unwrapping
if price! > 5.0{ //포장풀라면 !를 사용해야함
    print(price!)
}

// 조건형 unwrapping
if let p = price, p>5.0{
    print(p)
}

// Switch 조건문

let personAge = 14

if personAge < 1 {
    print("baby")
}else if personAge < 3{
    print("toddler")
}else if personAge < 5{
    print("preschooler")
}else if personAge < 13{
    print("gradeschooler")
}else if personAge < 18{
    print("teen")
}else{
    print("adult")
}

switch personAge {
case 0..<1:
    print("babe")
case 1..<3:
    print("toddler")
case 3..<5:
    print("preschooler")
case 5..<13:
    print("gradeschooler")
case 13..<18:
    print("teen")
default:
    print("adult")
}

let someInteger = 34
switch someInteger {
case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 100:
    print(100)
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
}

let character: Character = "a"
switch character {

    case "a","A":
        print("The letter A")
default:
    print("Not the letter A")
}

// Tuple 사용하기
let somePoint = (1,1)
switch somePoint {
case (0,0):
    print("\(somePoint) is at the origin")
case (_,0)://x값이 어디든지
    print("\(somePoint) is at the x-axis")
case (0,_)://y값이 어디든지
    print("\(somePoint) os on the y-axis")
case (-2...2,-2...2)://범위안에 어디든지
    print("\(somePoint) is inside the box")

default:
    print("\(somePoint) is outside if the box")
}

// case에 where 조건 사용하기
let anotherPoint = (1,-1)
switch anotherPoint {
case let(x,y) where x == y:
    print("\(x), \(y) is on the line x == y")
case let(x,y) where x == -y:
    print("\(x), \(y) is on the line x == -y")
default:
    break
}

let countryName = "United States"
var countryCode = ""

if countryName == "United Kingdom"{
    countryCode = "GB"
}else if countryName == "Mexico"{
    countryCode = "MX"
}else if countryName == "Canada"{
    countryCode = "CA"
}else if countryName == "Spain"{
    countryCode = "ES"
}else if countryName == "United States"{
    countryCode = "US"
}else{
    countryCode = "??"
}

print("Country named '\(countryName)' has code \(countryCode)")

//위의 소스를 enum과 switch로 사용

enum Countries : String{//약자를 통해서 조절 하는것
    case uk = "United Kingdom"
    case mx = "Mexico"
    case ca = "Canada"
    case es = "Spain"
    case us = "United States"
    case unknown = ""
}

switch Countries(rawValue: countryName) ?? .unknown {
case .uk: countryCode = "GB"
case .mx: countryCode = "MX"
case .ca: countryCode = "CA"
case .es: countryCode = "ES"
case .us: countryCode = "US"
case .unknown: countryCode = "??"

}
