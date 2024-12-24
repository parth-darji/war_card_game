import UIKit

var greeting:String = "Hello, playground"
print(greeting)
greeting = "Goodbye, playground"
print(greeting)

let myInt:Int = 5
print(myInt)

let myDouble:Double = 5.5
print(myDouble)

let myBool:Bool = true
print(myBool)

func sayHello(){
    var greeting:String = "from sayHello(): Hello, playground"
    print(greeting)
}
sayHello()
sayHello()

func acceptParamAndPrint(param:String){
    print(param)
}
acceptParamAndPrint(param: "This is a param!")

func additionToParam(num1:Double, num2:Double){
    var total = num1 + num2
    print(total)
}
additionToParam(num1: 3.4, num2: 3.4)

func returnInt() -> Int{
    return 5
}
print(returnInt())
