//
//  ViewController.swift
//  SesacWeek23
//
//  Created by AlexHwang on 2022/02/28.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    @IBAction func firstButtonTapped(_ sender: UIButton) {
        label.text = textField1.text
    }
    
    func calculateTextFieldTextCount() -> Int {
        return textField1.text?.count ?? 0
    }
}

