import UIKit


/*
 내 pc의 OS 크기 알기
 */

print("Int  : \(String(Int.min)) ~\(String(Int.max))")
print("Int8  : \(String(Int8.min)) ~\(String(Int8.max))")
print("Int16  : \(String(Int16.min)) ~\(String(Int16.max))")
print("Int32  : \(String(Int32.min)) ~\(String(Int32.max))")
print("Int64  : \(String(Int64.min)) ~\(String(Int64.max))")

/*
 기본 데이터 타입
 : Bool, Int, UInt, Float, Double, Character, String
 */

// Bool
var someBool : Bool = true
someBool = false

// Int
var someInt : Int = -100
someInt = Int(100.1)
someInt = 100_000
someInt = 100_0_00

// UInt
var someUInt : UInt = 100
//someUInt = -100 //error
//someUInt = someInt //error (type이 다름)

// Float
var someFloat : Float = 3.14
someFloat = 3
someFloat = 100_00.55_556
print(someFloat)

// Double
var someDouble : Double = 3.14
someDouble = 3
someDouble = 10_000.44_556

//Type
print("Printing \(type(of: someDouble)) : \(type(of: someFloat))")

// 숫자 Type 변환

let doubleNum = 4.999999
var castToInt = Int(doubleNum) //소수점 버림
var roundToInt = Int(doubleNum.rounded()) //반올림

print("Origin :",doubleNum,"After Cast: ", castToInt, "After Rounded: ",roundToInt)


// Character
var someCharacter : Character = ")"
someCharacter = "가"
someCharacter = "r"
//someCharacter = "rfdf"

// String
var someString : String = "하하하"
someString = someString + " 웃으면 복이와요"
someString += "나도"
print(someString)

someString = """
여러줄 문자열을
사용할 수 있습니다.
첫줄에 겹따옴표 3개,
마지막 줄에 겹따옴표 3개를
사용하면 됩니다.
"""//따옴표 배치 주의할 것

print(someString)

// 문자열과 특수문자

print("aa\tbb\ncc")
let wiseWords = "\"Imagination is more important than knowledge\" -Einstein" //따옴표 안의 따옴표

print(wiseWords)

// Unicode
let dollaSign = "\u{24}"
let blackHeart = "\u{2665}"
let sparklingHeart = "\u{1F496}"
print(dollaSign, blackHeart, sparklingHeart)

// 빈 문자열 초기화
var emptyString = ""
var anotherEmptyString = String()

// 빈 문자열 확인
if emptyString.isEmpty {
    print("Nothing to see here!")
}

// 문자열의 개별 문자 풀력
for chr in "Dog!🐶대한민국"{
    print(chr)
}

// 문자 상수 선언
let exclamationMark: Character = "!"

// 문자 배열을 이용한 문자열 출력
let catCharacters: [Character] = ["C","A","T","!","🐱"]
let catString = String(catCharacters) //스트링으로 형변환
var catString1 : String = String(catCharacters) //윗줄과 동일함
catString1.append(exclamationMark)

//----
let multiplier = 3
let message = "\(multiplier) times \(2.5) is \(2.5 * Double(multiplier))"
print(message)
// "3 times 2.5 is 7.5"

//문자 길이
let str = "12345,6789"
print("str has \(str.count) characters")

//문자열 인덱스
let greeting = "Guten Tag!"

greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]

let index = greeting.index(greeting.startIndex, offsetBy: 7)//G 이후 7번째
greeting[index]

// 문자열의 개별 문자 접근
print(greeting)

for index in greeting.indices{
    print("\(greeting[index])", terminator:",")
}

// 문자열의 삽입과 삭제
print()
var welcome1 = "hello"
welcome1.insert("!", at: welcome1.endIndex)

welcome1.insert(contentsOf: " there", at: welcome1.index(before: welcome1.endIndex))

welcome1.remove(at: welcome1.index(before: welcome1.endIndex))

print(welcome1)

let range = welcome1.index(welcome1.endIndex,offsetBy: -6)..<welcome1.endIndex //끝에서 6글자부터 마지막 까지
welcome1.removeSubrange(range)
print(welcome1)

// 부분 문자열
let greeting1 = "Hello, World!"
let index1 = greeting1.firstIndex(of:",") ?? greeting1.endIndex
// ?? : nil을 허용하면서 앞의 조건값에 해당하는 것이 없으면 endIndex를 수용한다.
let beginning = greeting1[..<index1]
print(beginning)

// 접두사와 접미사 비교
let romeoAndJuliet = [
    "Act1 Scene 1: Verona, A public place",
    "Act1 Scene 2: Capulet's mansion",
    "Act1 Scene 3: A room in Capulet's mansion",
    "Act1 Scene 4: A Street outside Capulet's mansion",
    "Act1 Scene 5: The Great Hall in Capulet's mansion",
    "Act2 Scene 1: Outside Capulet's mansion",
    "Act2 Scene 2: Capulet's orchard",
    "Act2 Scene 3: Outside Friar Lawrence's cell",
    "Act2 Scene 4: A street in Verona",
    "Act2 Scene 5: Capulet's mansion",
    "Act2 Scene 6: Friar Lawrence's cell",
]

var act1SceneCount = 0
for scene in romeoAndJuliet{
    if scene.hasPrefix("Act1"){
        act1SceneCount += 1
        
    }
}

print("There are \(act1SceneCount) scenes in Act 1")

var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet{
    if scene.hasSuffix("Capulet's mansion"){
        mansionCount += 1
    }else if scene.hasSuffix("Friar Lawrence's cell"){
        cellCount += 1
    }
}

print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")


// Any, nil
// Any : Swift의 모든 타입을 지칭하는 키워드
// nil : 없음을 의미하는 키워드

var someAny : Any = 100

someAny = "어떤 타입도 수용 가능하다"
someAny = 123.12

let someAny1 : Double = someAny as! Double //error 일치가 되지 않는다 (Any를 Double로 바꿔야한다) !는 강제형 변환
print(someAny1)

//someAny = nil //error Any타입은 nil을 수용하지 않는다.

// Tuple
// Tuple 사용전 선언 및 출력방법
var dialCode = 82
var isocode = "KR"
var name = "Korea"

print(dialCode,isocode,name)

// Tuple 사용

var Country = (82,"KR","Korea")
print(Country.0,Country.1,Country.2)

var Country1 = (dialCode: 82, isocode1 :"KR", name1: "Korea")
print(Country1.dialCode,Country1.isocode1,Country1.name1)
print(Country1.0)

let person1 = ("John Doe","201 Main Street", 35)
print("\(person1.0) lives at \(person1.1) and is \(person1.2) years old")

// Type 별칭
// 기본 Type이든 사용자 Type이든 별칭을 사용할 수 있음

typealias MyInt = Int
typealias YourInt = Int
typealias MyDouble = Double

let age: MyInt = 20
let year: YourInt = 2020

print(year)
