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
    @IBOutlet weak var viResult: UIView!
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var ivResult: UIImageView!
    
    var imc: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculate(_ sender: Any) {
        if let weith = Double(tfWeight.text!), let height = Double(tfHeight.text!){
            imc = weith / pow(height, 2)
            showResults()
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func showResults(){
        var results: String = ""
        var image: String = ""
        switch imc {
            case 0..<16:
                results = "Magreza"
                image = "abaixo"
            case 16..<18.5:
                results = "Abaixo do Peso"
                image = "abaixo"
            case 18.5..<25:
                results = "Peso Ideal"
                image = "ideal"
            case 25..<30:
                results = "Sobre Peso"
                image = "sobre"
            default:
                results = "Obesidade"
                image = "obesidade"
        }
        lblResult.text = "\(Int(imc)): \(results)"
        ivResult.image = UIImage(named: image)
        viResult.isHidden = false
        view.endEditing(true)
    }

}

