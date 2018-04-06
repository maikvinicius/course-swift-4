//
//  ViewController.swift
//  NavigationController
//
//  Created by Maik Vinicius on 06/04/18.
//  Copyright © 2018 Maik Vinicius. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        navigationController?.setNavigationBarHidden(true, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func next(_ sender: UIButton) {
        performSegue(withIdentifier: "segue", sender: nil)
    }
    
}

