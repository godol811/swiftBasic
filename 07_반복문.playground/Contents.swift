import Cocoa

let names = ["Anna","Alex","Brian","Jack"]

for name in names{
    print("Hello \(name)!")
}

for (index, text) in names.enumerated(){
    print("The name at index \(index) is \(text)")
}

let numberOfLegs = ["spider":8,"ant":6,"cat":4]
for (animalName, legCount) in numberOfLegs{
    
    print("\(animalName)'s have \(legCount) legs")
}

let minutes = 60
let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval){//0부터 5씩 60까지 stride를 한다.
    print(tickMark)
}

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"

switch integerToDescribe {
case 2,3,5,7,11,13,17,19:
    description += " a prime number, and also"
    fallthrough //자바에서는 break를 멈추게 하지만 swift는 멈춘다 그래서 fallthrough를 사용해서 흘린다.
default:
    description += " an integer"
}

print(description)

// ------

var startIndex1 = 0
var endIndex1 = 100
var sum1 = 0

gameLoop:while startIndex1 <= endIndex1 {//While 문의 이름을 정해줘서 무엇을 break, continue를 할지 정해준다.
    startIndex1 += 1
    sum1 += startIndex1
    if sum1 > 50{
        break gameLoop
    }else{
        continue gameLoop
    }
}
print(sum1)
