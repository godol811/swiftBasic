import UIKit

// 구조체 : Structure
// : 구조체는 Swift에서 Type을 정의한다.

// property and method

struct Sample{
    var sampleProperty: Int = 10
    let fixedSampleProperty: Int = 100
    static var typeProperty : Int = 1000//변수를 호출 하지 않고 바로 사용 가능하다.
    
    func instanceMethod(){
        print("instant Method")
    }
    
    static func typeMethod(){//변수를 호출 하지 않고 바로 사용 가능하다.
        print("typeMethod")
    }
}


// 구조체 사용
var samp: Sample = Sample()
samp.sampleProperty
samp.sampleProperty = 100 // 변수로 변경 하다
samp.sampleProperty
samp.fixedSampleProperty
//samp.fixedSampleProperty = 1000 //error let 값이므로 변경 불가

Sample.typeProperty //static일경우 변수를 호출 하지 않고 바로 사용 가능하다.
Sample.typeMethod() //static일경우 변수를 호출 하지 않고 바로 사용 가능하다.

// 학생 구조체

struct Student{
    var name: String = "unknown"
    var `class`: String = "Swift"
    
    static func selfIntroduce(){
        print("학생 타입입니다.")
    }
    
    func selfIntroduce() {
//        print("저는 \(`class`) 반 \(name)입니다.")
        print("저는 \(self.class) 반 \(name)입니다.")
    }
}

Student.selfIntroduce() //static

var student : Student = Student()
student.name = "James"
student.class = "스위프트"
student.selfIntroduce()

let cathy: Student = Student()

cathy.selfIntroduce()


// ---------------------------------------------------

// Class
// : 구조체는 값 타입인 반면 클래스는 참조 타입 Call by reference

class SampleC{
    var sampProperty: Int = 10
    let fixedSampProperty: Int = 100
    static var typeProperty: Int = 100
    
    func instanceMethod(){
        print("instance method")
    }
    static func typeMethod(){
        print("type method - static")
    }
    class func classMethod(){
        print("type method - class")
    }
    
}

//instance

var sampC: SampleC = SampleC()
sampC.sampProperty = 200
sampC.sampProperty

let sampC2: SampleC = SampleC()
sampC2.sampProperty = 500
sampC.sampProperty
sampC2.sampProperty

sampC = sampC2 // 클래스를 같은 타입이기 때문에 할당이 가능하다.
sampC.sampProperty
sampC2.sampProperty

//학생 클래스

// 학생 구조체

class StudentC{
    var name: String = "unknown"
    var `class`: String = "Swift"
    
    class func selfIntroduce(){
        print("학생 타입입니다.")
    }
    
    func selfIntroduce() {
//        print("저는 \(`class`) 반 \(name)입니다.")
        print("저는 \(self.class) 반 \(name)입니다.")
    }
}

StudentC.selfIntroduce()
var studentC1: StudentC = StudentC()
studentC1.name = "James"
studentC1.class = "스위프트"
studentC1.selfIntroduce()

let cathyC: StudentC = StudentC()
cathyC.name = "Cathy"
cathyC.class = "스위프트"
cathyC.selfIntroduce()


// Class와 Struct의 차이

struct ValueType{// call by Value 
    var property = 1
}

class ReferenceType{// call by reference 이웃값을 참조
    var property = 1
}

let firstStructInstance: ValueType = ValueType()
var secondStructInstance = firstStructInstance
secondStructInstance.property = 2
firstStructInstance.property
secondStructInstance.property
