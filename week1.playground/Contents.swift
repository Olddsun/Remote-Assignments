import UIKit

var greeting = "Hello, playground"

//Week 1 assignment

/*
Part1: Git & GitHub

2.
● git status
  用來檢查當下working directory的狀態以及暫存區(add後的檔案)，終端機會列出untracked的檔案，常在新增file後、add後、commit後確認文件狀態
  *git status只能用來檢查檔案(file)狀態，無法偵測資料夾

● git add
  將working directory的新增或修改的檔案add到暫存區(stage area)
  *git add . 可以將當下所有新增或修改的檔案都存到暫存區

● git commit
  只有被add過的檔案才能commit，commit表示將檔案從暫存區(staging area)送至repo，也意味著「存檔」，告訴終端機我確認要存檔這個檔案
  每次commit完之後，需要寫commit message，告訴協作者或是未來的自己當次存檔改了什麼東西

● git log
  可以查看過往commit的歷史紀錄，輸入git log後終端機會列出過去每次commit的hash、author、date、commit message，git log可以搭配很多不同的指令
  記錄幾個我覺得未來可能常用的指令

  *git log -p : 查看各commit之間的差異
   git log -(number) : 要查看多少(number)個commit
   git log --oneline : 查看summary (較短的hash & 第一行commit message)
   git log --author="(name)” : 找(name)作者的commit
   git log --grep="(關鍵字)” :  找commit message裡有(關鍵字)的
   git log -S”(content)” : 尋找(content)
   git log --graph : 用圖像的方式 shows branches

● git branch
  用來查看所有的branch，git branch也可搭配不同指令變化
  
  *git branch (branch name) : 表示創建一個名為(branch name)的branch
   git branch -b : shortcut of creating new branch and checking it out
   git branch -d (branch name) : 刪除(branch name)
   git branch -vv : list the branches and the remote branches that they are tracking
   git branch -vv --all : shows all branches including remote branches
   git push origin master : push changes up to the origin / up to Github repo


● git push [ repo_name ] [ branch_name ]
  這個指令的目的是將local的commit push至remote的repo以及分支，指令中[ repo_name ] [ branch_name ] 分別就是代表欲上傳的repo與branch
  這個動作主要是在local編輯完之後要跟其他協作者的版本合併，若是這狀況，repo_name很有可能會是預設的origin

● git remote -v
  查看remote repo的狀態，包含名稱以及連接的URL，確認local與remote的連接狀態

● fork
  fork是指從GitHub上拷貝副本，並存到自己的主機，方便協作者可以單獨作業，而不會互相影響，也不會影響到原始的repo
  在local結束編輯後，可以提出pull request給最初repo的擁有者，確認能否將新編輯的內容合併至原始檔案


3.
  establish a GitHub repo
  (1) 登入GitHub帳戶，並點擊右上角自己的頭貼 > Your Repository
  (2) 點擊畫面右上角綠色按鈕New
  (3) 填入 Repository name & Description
  (4) 選擇Public，表示這是公開的專案，大家都可以看到
  (5) README file可以用來說明這個專案的內容簡介、注意事項等等
  (6) license可以選擇 MIT license
  (7) 點擊畫面右下角 Create Repository

  upload the local projects to GitHub
  (1) 複製剛剛創立的repo的連結
  (2) 在終端機，切換到要push的檔案所屬的資料夾
  (3) 在終端機，輸入指令 git clone (步驟(1)repo的連結)，以上即表示已經把GitHub上Repo的檔案下載到local
  (4) 做完local的 project之後，存檔在剛剛git clone的那個資料夾
  (5) 在終端機，輸入指令git status，檢查是否有新存進來的狀態
  (6) 在終端機，輸入git add、git commit -m (commit message)
  (7) 在終端機，輸入指令git push . ，表示把剛剛所有的存檔都push上GitHub
 


//Part 2: Basic

1.
兩者都是用來declare variable
let用來表示constant 數學上常數的意思，亦即不會改變的值
var則表示可變的值，宣告後還是可以多次賦予其他值
 
*/


//2.
let pi : Double = 3.14

//3.
let x : Int = 1
let y : Int = 2

var average : Int = x + y / 2

//4.
//4-1
let a : Double = 1
let b : Double = 2

var average2 : Double = a + b / 2
 
//4-2
/*
 ( 10 / 3 ) and ( 10.0 / 3.0 ) 的差別在於運算後得出的值，先以(10/3)來說，因為3跟10都是Int，
 因此(3/10)計算得出的值也只會給到整數部分，亦即3
 另一方面，以(10.0/3.0)來說，因為兩者都是Double，所以計算得出的值會是3.333...
以下以實例操作說明
 */

let number1 = ( 10 / 3 )
let number2 = ( 10.0 / 3.0)
print(number1, number2)



//5

let number3 = 10
let number4 = 3
let remainder = number3 / number4
print(remainder)


//6
var flag : Bool = true
var inputString : String = "Hello world."
let bitsInBite : Int = 8
let averageScore : Double = 86.8

//7
//type inference 是一種Swift的功能，在寫程式宣告變數時，系統會根據你賦予變數的第一個值來判斷該變數的類型(type)
//例如
let myName = "Scott"
//我不需要在myName後面加上 : String， 系統會根據我賦予他的值("Scott") 來判斷myName「應該」是String

//8
//一開始phoneNumber的值是0987654321，系統會判斷他的類型為Int，所以第二行不能夠給他String值


//9
var salary = 22000
salary += 28000
print(salary)

//10
// ==
// 主要是用來判斷布林值使用，可以用在條件的語法中





//Part 3: Cllection

//1
var myFriends : [String] = []

//2
myFriends.append("Ian")
myFriends.append("Bomi")
myFriends.append("Kevin")

print(myFriends)

//3
myFriends.append("Micheal")

print(myFriends)


//4
myFriends.remove(at : 2 )
myFriends.insert("Kevin", at: 0)

print(myFriends)

//5
for i in myFriends{
    print(i)
}

//6
//print(myFriends[5])
//無法找出index 5是什麼，因為myFriends陣列不足六個item，因此index 5也沒item

//7
//可以尋找index 0 來得到數值，以下舉例
print ( myFriends[0] )
//或是使用函式 first

//8
//使用函式last
var lastItem = myFriends.last
print (lastItem as Any)

//9
var myCountryNumber : [String : Int] = [:]

//10

myCountryNumber["US"] = 1
myCountryNumber["GB"] = 44
myCountryNumber["JP"] = 81

//11
myCountryNumber["GB"] = 0

//12
//var dictionary: [ KeyType : ValueType ] = [:]
//在程式碼最後[:]表示這是一個empty Dictionary

//13
//可以直接把要刪除的key-value pair改成nil
//假設我要刪除["US"]
myCountryNumber["US"] = nil


//Part 4: Control Flow

//1
let lottoNumbers = [10, 9, 8, 7, 6, 5]

for numbers in lottoNumbers.suffix(3) {
    print ( numbers )
}

//2
//2-1
for numbers in lottoNumbers.reversed() {
    print (numbers )
}

//2-2
for i in stride(from: 0, to: 5, by: 2) {
    let number = lottoNumbers[i]
    print(number)
}
    
//3
//3-1
var i = 5
    
while i >= 0 {
    let number = lottoNumbers[i]
    print(number)
    i -= 1
}

//3-2
    
var i2 = 0
    
while i2 < lottoNumbers.count {
    let number = lottoNumbers[i2]
        
    if number % 2 == 0 {
        print(number)
    }
        
    i2 += 1
}
    
    
    
//4
//4-1

var i3 = lottoNumbers.count - 1

repeat {
    var number = lottoNumbers[i3]
    print(number)
    
    i3 -= 1
} while i3 <= 0

//4-2

var i4 = 0

repeat {
    var number = lottoNumbers[i4]
    print(number)
    
    i4 += 2
} while i4 > lottoNumbers.count - 1

//5
//while迴圈：在迴圈開始之前進行條件判斷，如果條件true，才會進入迴圈執行迴圈內容。如果條件false，那迴圈就不會執行。
//repeat-while迴圈：先執行迴圈內容，然後進行條件判斷。如果條件為真，則繼續執行迴圈內容，並重複執行直到條件為假。如果條件為假，則迴圈停止執行。

//整體而言，while 迴圈先進行條件判斷，如果條件true才開始執行迴圈內容，而 repeat-while會先執行迴圈內容，然後再進行條件判斷。

//6

var isRaining : Bool = true

if isRaining {
    print("It’s raining, I don’t want to work today.")
} else {
    print("Although it’s sunny, I still don’t want to work today.")
}

//7
let jobLevel = 4

switch jobLevel {
case 1:
    print("Member")
case 2:
    print("Team Leader")
case 3:
    print("Manager")
case 4:
    print("Director")
default:
    print("We don't have this job")
}



//Part 5: Function

//1
//第一個式子是String
//第二個式子是Double
    
//2
func mutiply( a: Int , b : Int = 10 ) -> Int {
    var answer = a * b
    return answer
}

//3
//每一個function都要有parameter，亦即參數，有參數給進去才能夠讓函式運作，而argument label則是用來增加函式的易讀性，可以加在parameter前面，讓其他人更能夠了解這個parameter的意義


//4
func greet (person name : String) {
    print ("Hello, \(name)")
}
greet( person : "Luke" )
