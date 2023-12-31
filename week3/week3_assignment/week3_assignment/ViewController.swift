//
//  ViewController.swift
//  week3_assignment
//
//  Created by chihsun on 2023/7/10.
//

// 1.
let isOdd: (Int) -> Bool = { number in
    return number % 2 != 0
}

let number = 5
let answer1 = isOdd(number)



// 2. AppWorks School assignment
import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    
    @IBOutlet weak var accountTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var checkTextField: UITextField!
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    @IBOutlet weak var checkLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        accountTextField.delegate = self
        passwordTextField.delegate = self
        checkTextField.delegate = self
        
        //這個條件要放在viewdidload因為他是一進程式就要呈現的樣子，一開始沒有放在這，就要先來回按幾次才出現要的隱藏效果
        segmentControl.layer.borderWidth = 1
        segmentControl.layer.borderColor = UIColor(ciColor: .black).cgColor
        
        
        if segmentControl.selectedSegmentIndex == 0 {
            checkLabel.textColor = .gray
            checkTextField.backgroundColor = .gray
            checkTextField.isEnabled = false
        }
        
        //設定segment的字體顏色
        //normal: 沒被選中的
        //selected：被選中的
        segmentControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: UIControl.State.normal)
        segmentControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: UIControl.State.selected)
        //設定segment tab顏色
        //backgroundColor: 沒被選中的tab
        //selectedSegmentTintColor：被選中的tab
        segmentControl.backgroundColor = .white
        segmentControl.selectedSegmentTintColor = .black
        
        
        segmentControl.addTarget(self, action: #selector(segmentChange), for: .valueChanged)
    
        
        
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            return true
      }
    
    
    @objc func segmentChange() {
        if segmentControl.selectedSegmentIndex == 0 {
            
            //設定textfield狀態
            checkLabel.textColor = .gray
            checkTextField.backgroundColor = .gray
            checkTextField.isEnabled = false
            accountTextField.text = ""
            passwordTextField.text = ""
            checkTextField.text = ""
            

        } else if segmentControl.selectedSegmentIndex == 1 {
            checkLabel.textColor = .black
            checkTextField.backgroundColor = .white
            checkTextField.isEnabled = true
            accountTextField.text = ""
            passwordTextField.text = ""
            checkTextField.text = ""
        }
    }
    
        
        
        @IBAction func showAlert( ){
            
            //為什麼這邊一定要guard let?
            guard let accountText = accountTextField.text,
                  let passwordText =  passwordTextField.text,
                  let checkText = checkTextField.text
                    
            else {return}
            
            if segmentControl.selectedSegmentIndex == 0 {
                
                if (accountText == "appworks_school" && passwordText == "1234") {
                    alertFitAll(title: "Success", message: "Log in", tabname: "OK")
//                    let alert = UIAlertController(title: "Success!", message: "Log in", preferredStyle: .alert)
//
//                    let action = UIAlertAction(title: "OK", style: .default, handler: nil)
//
//                    alert.addAction(action)
//
//                    present(alert, animated: true, completion: nil)
                    
                } else {
                    alertFitAll(title: "Error", message: "Login fail", tabname: "OK")
//                    let alert = UIAlertController(title: "Error", message: "Login fail", preferredStyle: .alert)
//
//                    let action = UIAlertAction(title: "OK", style: .default, handler: nil)
//
//                    alert.addAction(action)
//
//                    present(alert, animated: true, completion: nil)
                }
            }
            
            
            if segmentControl.selectedSegmentIndex == 1 {
                if (accountText != "" && passwordText != "" ){
                    if checkText == passwordText {
                        alertFitAll(title: "Success!", message: "Sign up", tabname: "OK")
//                        let alert = UIAlertController(title: "Success!", message: "Sign up", preferredStyle: .alert)
//
//                        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
//
//                        alert.addAction(action)
//
//                        present(alert, animated: true, completion: nil)
                    } else if checkText == "" {
                        alertFitAll(title: "Error", message: "Check password should not be empty.", tabname: "OK")
//                        let alert = UIAlertController(title: "Error", message: "Check password should not be empty.", preferredStyle: .alert)
//
//                        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
//
//                        alert.addAction(action)
//
//                        present(alert, animated: true, completion: nil)
                    } else if checkText != passwordText {
                        alertFitAll(title: "Error", message: "Signup fail\n(Check Password should be same as Password.)", tabname: "OK")
//                        let alert = UIAlertController(title: "Error", message: "checkPassword should be same as Password.", preferredStyle: .alert)
//
//                        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
//
//                        alert.addAction(action)
//
//                        present(alert, animated: true, completion: nil)
                    }
                
                }
            }
            
            if accountText == "" {
                alertFitAll(title: "Error", message: "Account should not be empty.", tabname: "OK")
//                let alert = UIAlertController(title: "Error", message: "Account should not be empty.", preferredStyle: .alert)
//
//                let action = UIAlertAction(title: "OK", style: .default, handler: nil)
//
//                alert.addAction(action)
//
//                present(alert, animated: true, completion: nil)
                
            } else if
                
                passwordText == "" {
                alertFitAll(title: "Error", message: "Password should not be empty.", tabname: "OK")
//                let alert = UIAlertController(title: "Error", message: "Password should not be empty.", preferredStyle: .alert)
//
//                let action = UIAlertAction(title: "OK", style: .default, handler: nil)
//
//                alert.addAction(action)
//
//                present(alert, animated: true, completion: nil)
//
            } else if
                
                checkText == "" {
                alertFitAll(title: "Error", message: "Check Password should not be empty.", tabname: "OK")
//                let alert = UIAlertController(title: "Error", message: "Check Password should not be empty.", preferredStyle: .alert)
//
//                let action = UIAlertAction(title: "OK", style: .default, handler: nil)
//
//                alert.addAction(action)
//
//                present(alert, animated: true, completion: nil)
                
            }
            
            
            
            //        @IBAction func segmentControlChange(_ sender: Any) {
            //
            //
            //
            //        }
            
            
            
            
            
        }
        
    
    func alertFitAll(title: String, message: String, tabname: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)

        let action = UIAlertAction(title: tabname, style: .default, handler: nil)

        alert.addAction(action)

        present(alert, animated: true, completion: nil)
        
    }

        
    }
    






