//
//  ViewController.swift
//  IMC
//
//  Created by Maik Vinicius on 17/03/18.
//  Copyright © 2018 Maik Vinicius. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tfWeight: UITextField!
    @IBOutlet weak var tfHeight: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var ivResult: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculate(_ sender: Any) {
    }
    

}

