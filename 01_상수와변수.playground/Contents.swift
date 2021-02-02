import UIKit


/*
 ---------------------------------------
 작명 규칙
 ---------------------------------------
 - Lower Camel Case : function, method, variable, constant
 ex) studentName, studentAge,...
 
 - Upper Camel Case : type(class, struct, enum, extension...)
 ex) Student, Product
 - 대소문자 구분
 - 첫 글자를 숫자로 시작하면 안됨
 
 */


/*
 Hello World!
 */

let message = "hello, World!"
print(message)

/*
 상수 (let)와 변수 (var)
 - 상수 : 한번 선언된 값에 대해 변경이 불가능
 - 변수 : 한번 선언된 값에 대해 변경이 가능
 
 - 상수 선언 방법
 - Basic Method
 let <variable name> : <type> = <value>
 - 추론 방법
 let <variable name> : <value>
 
 - 변수 선언 방법
 - Basic Method
 var <variable name> : <type> = <value>
 - 추론 방법
 var <variable name> : <value>
 
 */


let intLetNum1 : Int = 200
let intLetNum2 = 100

var intVarNum1 : Int = 200
var intVarNum2 = 100

//intLetNum1 = 2000 수정불가

intVarNum1 = 2000

print(intLetNum1)
print(intLetNum2)
print(intVarNum1)
print(intVarNum2)

dump(intLetNum1)

/*
 -----------------------------------
 class 설정
 -----------------------------------
 
 */
class Student{
    var name: String = "유비"
    var age: Int = 20
}

// Instance 생성
let student: Student = Student()
print(student)
print(student.name)
print(student.age)

dump(student)

/*
 -----------------------------------
 문자열 보관법
 -----------------------------------
 
 - String Interpolation
 - Program 실행중 문자열, 변수 , 상수의 값을 표현하기 위해 사용
 
 */

let studentName = "홍길동"
print(studentName)
print("Name :" + studentName)

print("Name :\(studentName)")

let age : Int = 10

print("저는 :\(age)살 입니다.")
print("저의 형은 :\(age+4)살 입니다.")

/*
 상수 선언후에 나중에 값 할당하기
 : 나중에 할당하려는 상수나 변수는 타입을 꼭 명시해 주어야 한다.
 
 

 */
let sum : Int
let inputA = 100
let inputB = 200
sum  = inputA + inputB
print(sum)
//sum = 0


var nickName : String = "유비"
print(nickName)

nickName = "관우"
print(nickName)
