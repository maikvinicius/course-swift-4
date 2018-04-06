//
//  ViewController.swift
//  SuperSenha
//
//  Created by Maik Vinicius on 06/04/18.
//  Copyright © 2018 Maik Vinicius. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfTotalPasswords: UITextField!
    @IBOutlet weak var tfNumbersOfCharacters: UITextField!
    @IBOutlet weak var swLetters: UISwitch!
    @IBOutlet weak var swNumbers: UISwitch!
    @IBOutlet weak var swCapitalLetters: UISwitch!
    @IBOutlet weak var swSpecialCharacters: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let passwordsViewController = segue.destination as! PasswordsViewController
        if let numberOfPasswords = Int(tfTotalPasswords.text!) {
            passwordsViewController.numbersOfPasswords = numberOfPasswords
        }
        if let numberOfCharacters = Int(tfNumbersOfCharacters.text!) {
            passwordsViewController.numbersOfCharacters = numberOfCharacters
        }
        passwordsViewController.useCapitalLetters = swCapitalLetters.isOn
        passwordsViewController.useSpecialCharacters = swSpecialCharacters.isOn
        passwordsViewController.useNumbers = swNumbers.isOn
        passwordsViewController.useLatters = swLetters.isOn
        view.endEditing(true)
    }

}

