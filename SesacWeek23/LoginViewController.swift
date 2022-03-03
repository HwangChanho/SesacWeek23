//
//  LoginViewController.swift
//  SesacWeek23
//
//  Created by AlexHwang on 2022/03/02.
//

import UIKit

class LoginViewController: UIViewController {
    
    var user = User(email: "", password: "", check: "")
    let validator = Validator()
    
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    @IBOutlet weak var checkTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnClicked(_ sender: UIButton) {
        user = User(email: idTextField.text!, password: pwTextField.text!, check: checkTextField.text!)
        
        if validator.isValidID(id: user.email)
            && validator.isValidPassword(password: user.password)
            && validator.isEqualPassword(password: user.password, check: user.check) {
            print("성공")
        } else {
            print("실패")
        }
    }
}
