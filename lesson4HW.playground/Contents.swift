import UIKit


//MARK: TASK1
func helloWorld(){
    print("Hello world")
}
helloWorld()


func greeting(name: String) {
    print("Hello \(name)")
}
greeting(name: "Amogus")

//MARK: TASK2
func twoStringSum(_ string1: String, _ string2: String){
    print(string1.count + string2.count)
}

twoStringSum("Hello!!!!", "WORLDDDD")

//MARK: TASK3
func square(_ number: Int){
    print(number * number)
}
square(5)

//MARK: TASK4
func areaСircle(_ r: Double){
    print(3.14 * (r * r))
}
areaСircle(15)

//MARK: TASK5

func isNight(_ isNight: Bool) -> String {
    if isNight {
        return "Ночь"
    } else {
        return "День"
    }
}
isNight(true)

//MARK: TASK6
func monthOfYear(_ month: Int) -> String {
    switch month {
    case 1...2, 12: "зима"
    case 3...5: "весна"
    case 6...8: "лето"
    case 9...11: "осень"
    default: "error"
    }
}
monthOfYear(6)

//MARK: TASK7
var phoneNumber = "+375291234567"
print("Код страны: \(phoneNumber.prefix(4))")
let phoneNumWithOutCodCountry = phoneNumber.dropFirst(4)
print("Код оператора \(phoneNumWithOutCodCountry.prefix(2))")
print("Номер телефона: \(phoneNumber.suffix(7))")

//MARK: TASK8
func isPrime(_ number: Int) -> Bool {
    if number < 2 {
        return false
    }
    for i in 2...(number - 1) {
        if number % i == 0 {
            return false
        }
    }
    return true
}

let result = isPrime(8)



//MARK: TASK9
func factorial(_ number: Int) -> Int {
    if number == 0{
        return 1
    }
    return number * factorial(number - 1)
}

factorial(4)


//MARK: TASK10.0
func fibbonachi(_ number: Int) -> Int {
    if number == 0{
        return 0
    } else if number == 1{
        return 1
    }
    return fibbonachi(number - 1) + fibbonachi(number - 2)
}

fibbonachi(12)


//MARK: TASK10.1
func fibb(_ number: Int) {
    var fiboNum1 = 1
    var fiboNum2 = 0
    for _ in 0...number {
        var temp = fiboNum1 + fiboNum2
        fiboNum1 = fiboNum2
        fiboNum2 = temp
   print(fiboNum2)
    }
}
fibb(10)

//MARK: TASK11
func SumOfFourNumbers(_ number: Int) -> Int {
    if number < 1000 || number > 9999 {
        return 0
    }
    let num1 = number % 10
    let num2 = number / 10 % 10
    let num3 = number / 100 % 10
    let num4 = number / 1000 % 10
    return num1 + num2 + num3 + num4
}
SumOfFourNumbers(1234)
