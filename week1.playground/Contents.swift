import UIKit

var greeting = "Hello, playground"

Week 1 assignment

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
let a : Double = 1
let b : Double = 2

var average2 : Double = a + b / 2
 
// ( 10 / 3 ) and ( 10.0 / 3.0 ) 的差別在於一開始給
