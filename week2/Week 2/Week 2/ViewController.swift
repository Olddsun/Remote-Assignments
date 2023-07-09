//
//  ViewController.swift
//  Week 2
//
//  Created by chihsun on 2023/7/8.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
        
    let text: [String] = [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
            "Contrary to popular belief, Lorem Ipsum is not simply random text.",
            "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
            "looked up one of the more obscure Latin words, consectetur",
            "from a Lorem Ipsum passage, and going through the cities of the word",
            "This book is a treatise on the theory of ethics, very popular during the.",
            "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet..",
    ]
        let colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple, .black]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapButon(_ sender: UIButton) {
            
            let randomIndex = Int.random(in: 0..<text.count)
        // 先產生一個隨機數字，再用這個數字當作文字和顏色array的undex
            let randomText = text[randomIndex]
            let randomColor = colors[randomIndex]
        // 因為文字和背景色是固定配對的，所以index可以共用同一個隨機數
            label.text = randomText
            view.backgroundColor = randomColor
        }


}

