import UIKit

// 함수 : function

func integerSum(a: Int, b: Int) -> Int{
    return a + b
}

print(integerSum(a: 5, b: 5))

func greet(person: String) -> String{
    return "Hello \(person)!"
}

print(greet(person:"Anna")) //Hello Anna!
print(greet(person:"Brian")) //Hello Anna!



// 파라미터가 없는 함수
func sayHelloWorld() -> String{
    return "Hello World!"
}

sayHelloWorld()

// 복수의 파라미터를 사용하는 함수
func greet1(person:String,alreadyGreeted:Bool) ->String{
    if alreadyGreeted{
        return ("Hello \(person), too.")
    }
    return("Hello \(person)")
}

greet1(person: "Tim",alreadyGreeted: true)
greet1(person: "Tim", alreadyGreeted: false)

// 초기값과 변수명을 없애는 함수
func buildAddress(_ name:String, address: String, city: String, zipCode postalCode:String, country: String? = "USA") -> String{
                // 앞에 변수명 없을경우                              //외부 변수명을 내부 변수명                // 변수가 아예 없으면 "USA"로 뽑는다. 대신 nil값을 지정해주면 ""로 리턴하도록 설정해놓는다.
    return """
            \(name)
            \(address)
            \(city)
            \(postalCode)
            \(country ?? "")
    """
    
}

print(buildAddress("Jonh Doe",address:"5 Covington Square", city: "Birmingham",zipCode:"01234"))
print(buildAddress("Jonh Doe",address:"5 Covington Square", city: "Birmingham",zipCode:"01234", country:"Korea"))
print(buildAddress("Jonh Doe",address:"5 Covington Square", city: "Birmingham",zipCode:"01234", country: nil))

// 변환값이 없는 함수
func printHello(name: String) -> Void{
    print("\(name)님! 안녕하세요!")
}

printHello(name: "유비")

func printAndCount(string:String) -> Int{
    print(string)
    return string.count
}

func printWithoutCounting(string: String){
    let _ = printAndCount(string: string)//printAndCount _ 의 return값을 반환할일 없으므로 _값으로 소멸시키기
 
}

printAndCount(string: "Hello World!")

printWithoutCounting(string: "Hello World!")

// 가변 매개변수

func sayHelloToFriends(me: String, friends: String...) ->String{//받는 매개가 여러개일경우
    return "Hello \(friends)! I'm \(me)"
}

print(sayHelloToFriends(me: "초선", friends: "손견","손책","장양"))
print(sayHelloToFriends(me: "조조"))

// 복수의 값을 return 하는 함수
func getCountry() ->(dialCode: Int, isoCode: String, name:String){
    let country = (dialCode:82,isoCode:"KR",name:"Korea")
    return country
}

print(getCountry())

// 배열중 최대값과 최소값을 return

func minMax(array:[Int]) ->(min:Int,max:Int){
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count] {
        if value < currentMin{
            currentMin = value
        }else if value > currentMax{
            currentMax = value
        }
    }
    return (currentMin,currentMax)
}



let bounds = minMax(array:[8,-6,2,109,3,71])
print("min is \(bounds.min) and max is \(bounds.max)")
