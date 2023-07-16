import UIKit

var greeting = "Hello, playground"



// WEEK 2

// Part1
// 1.

enum Gender {
    case male
    case female
    case undefined
}

//把enum範本先設定在class外面，要設定instance時使用

class Animal {
    
    let gender: Gender
    
    init(gender: Gender){
        self.gender = gender
    }
   
    func eat(){
        print("I eat everything!")
    }
   
}

let animal1 = Animal(gender: .female)
animal1.eat()

// 2.
class Elephant: Animal {
    override func eat(){
        print("I eat banana!")
    }
}

class Tiger: Animal {
    override func eat(){
        print("I eat meat!")
    }
}

class Horse: Animal {
    override func eat(){
        print("I eat grass!")
    }
}

// 3.
class Zoo {
    
    var weeklyHot: Animal

    
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
}

//class Zoo {
//
//    var weeklyHot: Animal
//
//    var tiger: Tiger
//    var elephant: Elephant
//    var horse: Horse
//
//    init(weeklyHot: Animal, tiger: Tiger, elephant: Elephant, horse: Horse) {
//        self.weeklyHot = weeklyHot
//        self.tiger = tiger
//        self.elephant = elephant
//        self.horse = horse
//    }
//}

let zoo = Zoo(weeklyHot: Tiger(gender: .undefined))
let tiger = Tiger(gender: .undefined)
let elephant = Elephant(gender: .undefined)
let horse = Horse(gender: .undefined)

zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse


// 4.
//Class是reference type參考型別，是可以用來share的，創建其他的class(subclass)時，可以繼承其他superclass的屬性，而且可以更改或是擴充
//舉例來說
class Guy {
    var name: String
    
    init(name: String){
        self.name = name
    }
}

var guy1 = Guy(name: "Scott")
var guy2 = guy1
guy2.name = "Benson"

print(guy1.name)
print(guy2.name)
//因為有繼承屬性，當我更改Guy2.name時，原先Guy1.name的Scott也被改成Benson


//Struct是value type數值型別，不會共享屬性，是“複製”屬性，而複製後做的更改，不會有“繼承”，也就不會影響到原先的Struct

struct Guyyy {
    var name: String
    
    static func printSomething(){
        print("Guyyy")
    }
    
}

var guyyy1 = Guyyy(name: "Li")
var guyyy2 = guyyy1
guyyy2.name = "Sun"

print(guyyy1.name)
print(guyyy2.name)


let isOdd: (Int) -> Bool = { number in
    return number % 2 != 0
}

let number = 5
let answer1 = isOdd(number)

// 5.
//用來設定初始value，因為class跟struct都是用來定義一個“類型”，他一開始不一定會被賦予固定的值，所以init()的作用就是用來先定義它最初始的值，這樣取用它的時候才能夠先得到一個值，不然會找不到值
// Class initializer有不同的類型:
// 1. 直接給值
// 2. Parameterized Initializer -> 設定type
// 3. convenience Initializer -> init() 之後，再寫一個convenience init()，這樣在使用class的時候就不用寫成下面這樣
//  var A = classA(value1: blabla, value2: blabla)

// 而Struct的initializer屬於memberwise initializer，在第一次使用struct的時候給他賦值就可以了

// 6.
// reference type ：
// 使用reference type時，儲存的let or var常數變數都是「參考」這個reference type，
// 就像是他們「共用」一個播放清單，當有人新增歌曲（更改屬性）時，也會影響到其他共用這個播放清單的人

// Value type :
// 使用Value type時，儲存的let or var常數變數則是直接以value type當作正本，拷貝一個副本，所以你在副本更改的星並不會影響到正本
// 延伸上面的舉例，因為我已經做一個播放清單的副本，所以我自己新增歌曲時，共用清單的朋友們並不會受到影響

// 7.
// Instance methods 是跟特定的instance相關聯的方法，只能用該instance呼叫；而type methods則是可以直接呼叫，不用先創建instance

// **instance和type的差別：
// 舉例來說
struct Family {
    let name: String
    
    func sayHello() {
        print("Hello!")
    }
    
    static func sayHi(){
        print("Hi!")
    }
    // "static"用來宣告這是一個type method
}

let dad = Family(name: "Jack")
// Family就是一個type，而dad則是我創建的instance of Family

dad.sayHello()
// sayHello就是一個instance method，需要透過instance(dad)才能夠呼叫他

Family.sayHi()
// type method就像是透過這個type來呼叫一個內建的function

// 8.

// Instance method 中 self表示剛method所屬的instance本身，可以用來存取那個instance的屬性

// 而在type method中 ， self表示該type本身



//Part2

// 1.

enum Gasoline {
    case gasoline92(liters: Int)
    case gasoline95(liters: Int)
    case gasoline98(liters: Int)
    case diesel(liters: Int)
    
    func gerPrice(gastype: Gasoline) -> String{
        switch gastype {
        case .gasoline92:
            return "92"
        case .gasoline95:
            return "95"
        case .gasoline98:
            return "98"
        case .diesel:
            return "$$"
        }
    }
}

// ● Please explain what enum associated value is and how it works.
   
// associated value是用來讓enum裡case增加更詳盡的說明，可以儲存更多相關聯的資料，像是上面的Gasoline case中，我加入liters(公升數)，後面就可以創建類似公升*價格的函式來算加油總價



// 2.

// 2-1

class Pet {
    let name: String
    
    init(name: String){
        self.name = name
    }
    
}

class People {
    let pet: Pet?
    
    init(pet: Pet?){
        self.pet = pet
    }
    
}

let mydog = Pet(name: "Shuni")
let noPet = People(pet: nil)


// 2-2
let ownPet = People(pet: mydog)

func guardletExample(){
    guard let pet = ownPet.pet else{
        print("this person has no pet")
        return
    }
    print("\(pet.name)")
}

// 2-3
let mydog2 = Pet(name: "Shubing")
let ownPet2 = People(pet: mydog2)

if let pet = ownPet2.pet {
    print("\(pet.name)")
} else {
    print("this person has no pet")
}


// Part3

struct Person {
    var name: String
    var toolMan: ToolMan
    
    init(name: String, toolMan: ToolMan){
        self.name = name
        self.toolMan = toolMan
    }

}

protocol PoliceMan {
    func arrestCriminals()
}

extension Person: PoliceMan {
    func arrestCriminals(){
    }
}

protocol ToolMan {
    func fixComputer()
}

extension Person: ToolMan {
    func fixComputer() {

    }
}

struct Engineer: ToolMan{
    func fixComputer() {
    }
}

var steven = Person(name: "Steven", toolMan: Engineer())




// Part 4

enum GuessNumberGameError: Error {
    case wrongNumber
}
class GuessNumberGame {
    var targetNumber = 10
    func guess(number: Int) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
        }
        print("Guess the right number: \(targetNumber)")
    }
}

let game = GuessNumberGame()
try game.guess(number: 10)


