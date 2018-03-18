//
//  ViewController.swift
//  Conversores
//
//  Created by Maik Vinicius on 17/03/18.
//  Copyright © 2018 Maik Vinicius. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblUnit: UILabel!
    @IBOutlet weak var tfValue: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var lblResultUnit: UILabel!
    @IBOutlet weak var btUnitOne: UIButton!
    @IBOutlet weak var btUnitTwo: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showNext(_ sender: UIButton) {
        
        switch lblUnit.text! {
            case "Temperatura":
                lblUnit.text = "Peso"
                btUnitOne.setTitle("Kilograma", for: .normal)
                btUnitTwo.setTitle("Libra", for: .normal)
            case "Peso":
                lblUnit.text = "Moeda"
                btUnitOne.setTitle("Real", for: .normal)
                btUnitTwo.setTitle("Dollar", for: .normal)
            case "Moeda":
                lblUnit.text = "Distância"
                btUnitOne.setTitle("Metro", for: .normal)
                btUnitTwo.setTitle("Kilômetros", for: .normal)
            default:
                lblUnit.text = "Temperatura"
                btUnitOne.setTitle("Celsius", for: .normal)
                btUnitTwo.setTitle("Farenheint", for: .normal)
        }
        
        convert(nil)
        
    }
    
    @IBAction func convert(_ sender: UIButton?) {
        
        if let sender = sender {
            if sender == btUnitOne{
                btUnitTwo.alpha = 0.5
            }else{
                btUnitOne.alpha = 0.5
            }
            sender.alpha = 1.0
        }
        
        switch lblUnit.text! {
            case "Temperatura":
                calcTemperature()
            case "Peso":
                calcWeith()
            case "Moeda":
                calcCurrency()
            default:
                calcDistance()
        }
        
        view.endEditing(true)
        let result = Double(lblResult.text!)!
        lblResult.text = String(format: "%.2f", result)
        
    }
    
    func calcTemperature(){
        guard let temperature = Double(tfValue.text!) else {return}
        if btUnitOne.alpha == 1.0{
            lblResultUnit.text = "Farenheint"
            lblResult.text = String(temperature * 1.8 + 32.0)
        } else{
            lblResultUnit.text = "Celsius"
            lblResult.text = String((temperature - 32.0) / 1.8)
        }
    }
    
    func calcWeith(){
        guard let weight = Double(tfValue.text!) else {return}
        if btUnitOne.alpha == 1.0{
            lblResultUnit.text = "Kilograma"
            lblResult.text = String(weight / 2.2046)
        } else{
            lblResultUnit.text = "Libra"
            lblResult.text = String(weight * 2.2046)
        }
    }
    
    func calcCurrency(){
        guard let currancy = Double(tfValue.text!) else {return}
        if btUnitOne.alpha == 1.0{
            lblResultUnit.text = "Dollar"
            lblResult.text = String(currancy / 3.5)
        } else{
            lblResultUnit.text = "Real"
            lblResult.text = String(currancy * 3.5)
        }
    }
    
    func calcDistance(){
        guard let distance = Double(tfValue.text!) else {return}
        if btUnitOne.alpha == 1.0{
            lblResultUnit.text = "Kilômetro"
            lblResult.text = String(distance / 1000)
        } else{
            lblResultUnit.text = "Metros"
            lblResult.text = String(distance * 1000)
        }
    }
    
    
}

