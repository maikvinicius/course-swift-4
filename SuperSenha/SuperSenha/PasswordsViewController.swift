//
//  PasswordsViewController.swift
//  SuperSenha
//
//  Created by Maik Vinicius on 06/04/18.
//  Copyright © 2018 Maik Vinicius. All rights reserved.
//

import UIKit

class PasswordsViewController: UIViewController {
    
    @IBOutlet weak var tvPasswords: UITextView!
    
    var numbersOfCharacters: Int = 10
    var numbersOfPasswords: Int = 1
    var useLatters: Bool!
    var useNumbers: Bool!
    var useCapitalLetters: Bool!
    var useSpecialCharacters: Bool!
    
    var passwordGenerator: PasswordGenerator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Total de senhas: \(numbersOfPasswords)"
        
        passwordGenerator = PasswordGenerator(numberOfCharacters: numbersOfCharacters, useLetters: useLatters, useNumbers: useNumbers, useCapitalLetters: useCapitalLetters, useSpecialCharacters: useSpecialCharacters)
        
        generatePasswords()
        
    }
    
    func generatePasswords(){
        tvPasswords.scrollRangeToVisible(NSRange(location: 0, length: 0))
        tvPasswords.text = ""
        let passwords = passwordGenerator.generate(total: numbersOfPasswords)
        for password in passwords{
            tvPasswords.text.append(password+"\n\n")
        }
    }
    
    @IBAction func generate(_ sender: UIButton) {
        generatePasswords()
    }
    
}
