//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by Maik Vinicius on 25/03/18.
//  Copyright © 2018 Maik Vinicius. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var lbAnswers: UILabel!
    @IBOutlet weak var lbCorrects: UILabel!
    @IBOutlet weak var lbWrongs: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    
    var totalCorrectedAnswers: Int = 0
    var totalAnswers: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbAnswers.text = "Perguntas Respondidas: \(totalAnswers)"
        lbCorrects.text = "Perguntas Corretas: \(totalCorrectedAnswers)"
        lbWrongs.text = "Perguntas Erradas: \(totalAnswers - totalCorrectedAnswers)"
        
        let score = totalCorrectedAnswers*100/totalAnswers
        lbScore.text = "\(score)%"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
