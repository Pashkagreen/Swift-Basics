import UIKit

// Swift basics - Основы языка Swift


// ----------------------
// Variables – переменные
// ----------------------

let greetingsMessage = "Hello, Paul Grin!"

// Variables (coulb be redeclared)
var greeting = "Hello, playground"
greeting = "Hello, greeting"

var howAreYou = "I am fine, thank you"


// ------------------------
// Data types - Типы данных
// ------------------------

// Integer
var number: Int = -27

Int.min
Int.max

Int64.min
Int.max

UInt.min
UInt.max

// Числа с плавающей точкой
// Double / Float

var doubleNumber = 5.47;
var floatMinusNumber: Float = -300.2545874578809
var doubleBigNumber: Double = -300.53842953875937593579

// Cannot sum diff types
var sum = number + Int(doubleNumber)
// Easy convert to double
var sum2 = Double(number) + doubleNumber

// String

var greetingString = "Hello, playground" + ", concated string"

print("Kek, \(greetingString)")

// Bool
var areYouHappy = true

if areYouHappy {
    print("Good")
} else {
    print("Bad")
}


// -----------------------------------
// Basic operators – Базовые операторы
// -----------------------------------

// Унарные:

// Префиксные: -a, !b;
// Постфиксные: c!

// Бинарные: 1 + 2

// Тернарные: a ? b : c

// Присваивания

var count = 0

count += 1

print(count)

print(10 % 3)

let p = 10
let t = 15

p == t
p != t

p == t ? print("true") : print("false")

// Оператор замкнутого/закрытого диапазона (a...b), оператор полузамкнутого/полузакрытого диапазона (a...<b)

let firstCard = 10
let secondCard = 11

if firstCard + secondCard == 21 {
    print("You are win")
}


// -----------
// Switch case
// -----------

let weather = "Sunny"

switch weather {
case "Sunny": print("Enjoy")
case "Rainy": print("Bring an umbrella")
   // fallthrough - чтоб отработал и дефолтный по-любому
default: print("Wear glasses")
}

let age = 16

switch age {
case 18...99: print("You are an old man")
case 0...18: print("You are an young man")
    fallthrough
default: print("Enjoy your life")
}


// --------------
// Cycles - Циклы
// --------------

// for in - while - while-repeat

let arrayOfNumbers = 1...10

for number in arrayOfNumbers {
    print(number)
}

var numberWhile = 1

while numberWhile <= 12 {
    print(numberWhile)
    numberWhile += 1
    
    if numberWhile == 8 {
        print("Break")
        break
    }
}

repeat {
    print(numberWhile)
    numberWhile += 2
} while numberWhile < 28


// -------------------------------------------------------
// Составной тип данных Tuple (набор простых типов данных)
// -------------------------------------------------------

var person = (name: "Pavel", age: 22, isMarried: false, weight: 70.5)

let tuple1 = "tuple"
let tuple2 = 2;

var tuple3 = (tuple1, tuple2);

var tuple4: (String, Int)

tuple4 = ("d",228)

var (height, weight) = (75, 140)

height

tuple4.0
person.name


// ------------------------
// Optional Types - Опциональные типы данных
// ------------------------

// nil

var ageNil: Int? = 12

//ageNil = nil

if ageNil == nil {
    print("Age is nil")
} else {
    ageNil! + 1
}


let yearOfBirth: String? = "2001"

if let safeYearOfBirth = Int(yearOfBirth ?? "2001") {
    safeYearOfBirth
}


// -----------------------------------------------
// Коллекции в Swift (Массивы, Множества, Словари)
// -----------------------------------------------

// Long form
var arrayLong = Array<String>()
// Short
var arrayShort = [String]()

var fruits = ["Lemon", "Orange", "Apple", "Strawberry"];

fruits.count
fruits.isEmpty
arrayShort.isEmpty
fruits.reverse()
fruits.append("Pineapple")
fruits.capacity
fruits.last
fruits.first
fruits[0] = "Rapsberry"

fruits

fruits.insert("Mango", at: 1)

for item in fruits {
    print(item)
}

for (index, value) in fruits.enumerated() {
    print("Element: \(index): \(value)" )
}

fruits += ["Pepper"]

var numbers1 = [1,2,3,4,5]
var numbers2 = [6,7,8]

// Множества

var set = Set<String>()

var sportSetList: Set = ["Football", "Ice-hockey", "Golf", "Volleyball"]

sportSetList.count
sportSetList.insert("Fishing")
sportSetList.remove("Football")
sportSetList.contains("Football")
sportSetList.contains("Golf")

let uniqueColors = Set(["Red", "Green", "Yellow", "Red"])

let oddNumbers = Set([1,3,5,7,9])
let evenNumbers = Set([2,4,6,8,10])

let primeNumbers = Set([2,3,5,7])

oddNumbers.union(evenNumbers).sorted()

oddNumbers.intersection(evenNumbers)
oddNumbers.subtracting(primeNumbers).sorted()
oddNumbers.symmetricDifference(primeNumbers).sorted()

// Словари Dictionary<Key, Value>

var dictionary = [Int: String]()

var heights = ["Ian": 1.75, "Maria": 1.65, "Ihor": 1.90]

heights["Ian"]

heights.count
heights["Max"] = 2.29

heights["Maria"] = 1.75

heights.updateValue(1.86, forKey: "Pavel")

heights.removeValue(forKey: "Max")

for name in heights.keys {
    print("Name: \(name)")
}

for height in heights.values {
    print("Height: \(height)")
}

var arrayOfKeys = Array(heights.keys)


// -------------------
// Functions - Функции
// -------------------

func calculateSquare(a: Double, b: Double) -> Double {
//    return a*b
    a*b
}

let b = calculateSquare(a: 1.75, b: 1.75)

print(b)

func getUser() -> [String: Any] {
    ["name": "Ivan", "lastName": "Ivanov"]
}

let user = getUser()

print(user["name"])

func getUser2() -> (first: String, second: String) {
    return (first: "Pavel", second: "Grin")
}

print(getUser2().first)

// Внешние и внутренние параметры

func sayHello(to name: String) {
    print("Hello, \(name)!")
}

sayHello(to: "Jan")

// Пропуск имен параметров

func greet(_ person: String) {
    print("Hello, \(person)!")
}

greet("Alex")

// Вариативные функции и параметры

func square(_ numbers: Int...) {
    for number in numbers {
        print("Number \(number) squared is \(number*number)")
    }
}

square(2,45,767)

// Сквозные параметры - inout (для мутирования входящих параметров)

func doubleIt(number: inout Int) {
    number *= 2
}

var myNumber = 10

doubleIt(number: &myNumber)

print(myNumber)


// -------------------
// Clousers - Замыкания
// -------------------

//{ (параметры) -> тип результата in
//    // тело замыкания
//}

// Без параметров
let driving = {
    print("I'm driving in my car!")
}

driving()

// С параметрами
let drivingInPlace = {(place: String) in
    print("I am driving in \(place)")
}

drivingInPlace("London")

let returnDrivingInPlace = {(place: String) -> String in
    return "I am driving in \(place)"
}

returnDrivingInPlace("Minsk")

// -> Bool

let emptyParams = {() -> Bool in
    return true
}

let isEmpty = emptyParams()

// Передача замыкания в функцию, принято писать последним

func travel(action: () -> Void) {
    print("Ready to action:")
    action()
    print("I'm arrived")
}

travel(action: driving)

// Trailing closure syntax - если последний параметр функции является кложуром, вызов сразу после ф-ции
travel(){
    print("Closure invocation")
}

// Можно и так
travel {
    print("Second closure invocation")
}

// Пример с animate

func animate(duration: Double, animations: () -> Void) {
    print("Animation duration is: \(duration) seconds.")
    animations()
}

animate(duration: 5, animations: {
    print("Animated successfully")
})

animate(duration: 4){
    print("Animated successfully with trailing syntax")
}

// Функция принимающая кложур, который имеет свои параметры

func travelWithClosureParameters(action: (String) -> Void) {
    print("Ready to action:")
    action("Grodno")
    print("I'm arrived")
}

travelWithClosureParameters { (place: String) in
    print("I'm going to \(place)")
}

let changeSpeed = {(speed: Int) in
    print("Speed changed to \(speed) kph.")
}

func travel3(action: (String, Int) -> String) {
    print("Ready to action:")
    action("Mumbai", 500)
    print("I'm arrived")
}

// Сокращенный синтаксис передачи параметров (макс для 1,2 параметров)
travel3 {
    "Flying to \($0) with average speed \($1) mph."
}

// Возвращение кложура из функции
func travel4() -> (String) -> Void {
    return {
        print("Return closure from func \($0)")
    }
}

let result = travel4()

result("travel4")


// Пример замыкания

func sumFunc(_ a: Int) -> (Int) -> Int {
    return {
        a + $0
    }
}


let sumValue = sumFunc(5)

print(sumValue(10)) // 15


// ------------------------------------------
// ENUMS - перечисления (типы первого класса)
// ------------------------------------------

enum ResponseResult {
    case success
    case failure
    // case success, failure
}

let resultApi = ResponseResult.success

var resultKek: ResponseResult

resultKek = .success

enum Activity {
    case dancing
    case running
    case talking
    case singing
}

let currentActivity = Activity.dancing

// Нужно перечислить все енамки
switch currentActivity {
    case .dancing: print("Dance")
    case .running: print("Run")
    case .singing: print("Sing")
    case .talking: print("Talk")
}

// Ассоциативные(связанные) значения - добавить больше информации о кейсе
enum ActivityValues {
    case dancing(type: String)
    case running(destination: String)
    case talking(topic: String)
    case singing
}

let talking = ActivityValues.talking(topic: "Football")

// Raw values - определенные значения
enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)

enum Phone: String {
    case Apple = "iPhone 8"
    case Samsung = "Galaxy Z"
    case Google = "Pixel 5"
}

var myPhone = Phone.Apple

print(myPhone.rawValue)


// Абстрактные структуры в Swift - Классы, Перечисления, Структуры

// ----------------
// Classes - Классы
// ----------------

// Класс - описание объекта
// Объект - экземпляр класса

class Human {
    var age: Int
    var name: String
    var isQualified: Bool
    
    // Вычисляемое свойство
    var status: String {
        if isQualified {
            return "\(name) is qualified!"
        } else {
            return "\(name) is NOT qualified!"
        }
    }
    
    // аналог constructor в js
    init(_ age: Int,_ name: String, isQualified: Bool) {
        self.age = age;
        self.name = name
        self.isQualified = isQualified
    }
    
    public func move() {
        print("\(self.name) is moving!")
    }
}

var pavel = Human(24, "Pavel", isQualified: false)


pavel.age
pavel.move()
pavel.status

// Геттеры, Сеттеры

class Account {
    // var sum: Double = 0; // сумма вклада
    var sum: Double {
        willSet(newSum) {
            print("Previous sum: \(self.sum), New sum: \(newSum)")
        }
        didSet(oldSum) {
            print("Sum increased by: \(self.sum - oldSum)")
        }
    }
    var rate: Double = 0.0 // Процентная ставка вклада
    
    public var profit: Double {
        get {
            return sum + sum * rate
        }
        
        set(newProfit) {
            self.sum = newProfit / (1 + rate)
        }
    }
    
    init(sum: Double, rate: Double) {
        self.sum = sum
        self.rate = rate
    }
}

var myAcc: Account = Account(sum: 1000, rate: 5)

// Ожидаемая прибыль
myAcc.profit = 2000

// Такая сумма должна быть чтоб получить профит 2000
myAcc.sum


// ------------------
// Структуры - Struct
// ------------------

// Похожи на классы, но отличаются

class HumanClass {
    var age: Int
    var name: String
    
    init(age: Int, name: String) {
        self.age = age
        self.name = name
    }
}

let human = HumanClass(age: 20, name: "Igor")

human.age = 40

// 1. Для структур не надо создавать инициализатор init()
struct HumanStruct {
    var age: Int
    var name: String
}

let human4 = HumanStruct(age: 25, name: "Pavel")

// 2. Если struct обьявляется в const, то уже потом нельзя поменять поле, в классе - можно
//human4.age = 50

// Типы данных
// Value Type: Int, String, Bool, STRUCT и тп
// Reference Type: enum, class

// Примитивные типы данных являются Struct

// 3. При копировании, создается копия структуры, значения в исходной не меняются, в отличие от классов, где при копировании ссылка на один и тот же класс в памяти остается


// -------------------------------
// Property types - Свойства типов
// -------------------------------

// static (внутри классов, структур)
// lazy - инициализируются только тогда, когда их вызовут

// -------------------
// Наследование класса
// -------------------

// Базовый класс
class Dog {
    
    var name: String = ""
    var breed: String = ""
    
    var info: String {
        return "The breed of \(name) is \(breed)"
    }
    
    func makeNoise() -> String {
        return "Gav-gav"
    }
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

// Наследуемый класс
class Corgi: Dog {
    
    override func makeNoise() -> String {
        return super.makeNoise() + ", say Corgi"
    }
    
    init() {
        super.init(name: "Alisa", breed: "Corgie")
    }
}

var corgiPuppy = Corgi()

corgiPuppy.name
corgiPuppy.makeNoise()


// ----------
// Расширения
// ----------

extension Int {
    func square() -> Int {
        return self*self
    }
    
    var isEven: Bool {
        return self % 2 == 0
    }
}

var numberTen = 10

numberTen.square()
numberTen.isEven
















































