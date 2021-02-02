import UIKit


/*
 Collection : 여러 값들을 묶어서 하나의 변수로 사용
 
 Array : 순서가 있는 리스트 컬렉션
 Dictionary : Key와 Value의 쌍으로 이루어진 collection
 Set : 순서가 없고 , 멤버는 유일한 값으로 구성
 
 */

// Array
// Empty Int Array 생성

var intVariable: Array<Int> = Array<Int>()

intVariable.append(1)
intVariable.append(10)
intVariable.append(100)
intVariable.append(Int(100.1))//error (실수가 들어가므로)
print(intVariable)

intVariable.contains(100)//아이디 파악할때 좋을듯
intVariable.contains(99)
intVariable[0]
intVariable[0...1]

intVariable.remove(at: 0)
intVariable.count

intVariable.removeLast()
intVariable

intVariable.removeAll()
intVariable
intVariable.count
//intVariable[0]//error:Excution was interrupted, reason:EXC_BAD_INSTRUCTION (배열이 없는데 리턴을 시키니 에러가 날 수 밖에)

/*
 여러가지 Array 선언
 */

//empty Double Array 생성
//var doubleVariable: Array<Double> = Array<Double>()
//var doubleVariable: Array<Double> = [Double]()
//var doubleVariable: [Double] = [Double]()
var doubleVariable: [Double] = []
var intVariable1: [Int] = []

// 배열에 초기값을 넣어 생성하기
let intVariable3 : [Int] = [1,2,3]
let intVariable4 = [1,2,3]
//let intVariable5 = []//error 배열인지 파악이 안됨

// 빈 배열을 생성
var someInts:[Int] = []
print("someInts is of type [Int] with \(someInts.count) itmes")
// 배열에 3을 추가
someInts.append(3)
print("someInts is of type [Int] with \(someInts.count) itmes")
// 배열을 삭제하기
someInts = []
print("someInts is of type [Int] with \(someInts.count) itmes")

// 기본값으로 설정된 배열 생성하기
var threeDoubles = Array(repeating: 0.0, count: 3)
print(threeDoubles)

var anotherThreeDoubles = Array(repeating: 2.5, count: 3)

// 배열 합치기
var sixDoubles = threeDoubles + anotherThreeDoubles// 배열끼리 더해지면 합쳐진다 (배열 6개)
print(sixDoubles)

// 문자를 이용한 배열의 생성
var shoppingList : [String] = ["Eggs","Milk"]
shoppingList

// 문자열 배열의 출력
for i in 0..<shoppingList.count{
    print(shoppingList[i])
}

if shoppingList.isEmpty {
    print("The shopping list is empty")
}else{
    print("The shopping list is not empty")
}

// 배열에 데이터 추가
shoppingList.append("Four")
print(shoppingList.count, shoppingList)

shoppingList += ["Banking","Powder"]
print(shoppingList.count, shoppingList)

shoppingList += ["Chocolate spread","Cheese","Butter"]
print(shoppingList.count, shoppingList)

// 배열의 특정 위치 데이터 변경 및 삭제
shoppingList[4...6] = ["Bananas","Apples"] //3개는 지워지고 그사이에 2개가 들어간다.
print(shoppingList.count, shoppingList)

// 배열의 특정 위치 데이터 추가, 삭제, 변경
shoppingList.insert("Maple Syrup", at: 0)//뒤에있는 애들은 뒤로 주소가 밀린다.
print(shoppingList.count, shoppingList)

let mapleSyrup = shoppingList.remove(at: 0)//삭제 한 값을 가여올 수 있다.
print(mapleSyrup,shoppingList.count, shoppingList)

shoppingList
// 배열의 값과 인덱스가 필요한 경우
for (index, value) in shoppingList.enumerated(){//튜플로 받는 enumerated(주소,값)
    print("Item \(index + 1) : \(value)")
}

//Dictionary

//var stringDictionary: Dictionary<String, String> = [String:String]()
var stringDictionary: [String:String] = [:]

stringDictionary["name"] = "유비"
stringDictionary["name1"] = "관우"
stringDictionary["name2"] = "장비"
stringDictionary["a"] = "초선"

print(stringDictionary)

var scoreDictionary: [String: Int] = [:]
scoreDictionary["유비"] = 100
scoreDictionary["관우"] = 90
scoreDictionary["장비"] = 80

scoreDictionary

var anyDictionary: [String: Any] = [:]
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100

// key에 해당하는 값 변경
anyDictionary["someKey"] = "dictionary"
anyDictionary

// key에 해당하는 값 제거
anyDictionary.removeValue(forKey: "anotherKey")
anyDictionary
anyDictionary["somekey"] = nil
anyDictionary


// set

var integerSet: Set<Int> = Set<Int>()
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(100)
integerSet//같은 값을 넣어도 중복되는값이므로 제외된다.

integerSet.contains(1)//색인 검색

integerSet.remove(1)
integerSet

// 배열 문자를 이용한 Set 생성
var favoriteGenres:Set<String> = ["Rock","Classical","Hip hop"]
print(favoriteGenres.count, favoriteGenres)

var favoriteGenres1:Set = ["Rock","Classical","Hip hop"]//선언하나 안하나 같다.
print(favoriteGenres1.count, favoriteGenres)

favoriteGenres.isEmpty

// 추가

favoriteGenres.insert("Jazz")
favoriteGenres

// 삭제
if let removedGenre = favoriteGenres.remove("Rock") {//상수하나 지정해서 리무브 되는것을 지정
    print("\(removedGenre) I'm over it.")
    
}else{
    print("I never much cared for that.")
}

// 숫자와 집합 계산할때 유용하게 사용하는 set
let oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [0,2,4,6,8]
let singleDigits: Set = [2,3,5,7]

// 합집합
oddDigits.union(evenDigits).sorted()

// 교집합
oddDigits.intersection(evenDigits)
oddDigits.intersection(singleDigits).sorted()

// 차집합
oddDigits.subtracting(singleDigits)

// 여집합
oddDigits.symmetricDifference(singleDigits).sorted()

// Set의 멤버십과 동등 비교
let houseAnimal: Set = ["dog","cat"]
let farmAnimal: Set = ["cow","chicken","sheep","dog","cat"]
let cityAnimal: Set = ["duck","rabbit"]

houseAnimal.isSubset(of: farmAnimal) // 내집단
farmAnimal.isSuperset(of: houseAnimal)// 모집단
farmAnimal.isDisjoint(with: cityAnimal)//완전히 다른 집단 교집합이 없음
