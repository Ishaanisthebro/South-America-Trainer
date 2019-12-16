//
//  ViewController.swift
//  South and Central America Trainer
//
//  Created by Ishaan Koratkar on 12/4/19.
//  Copyright © 2019 Ishaan Koratkar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var capitalLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    let capitals = Capitals()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        // Do any additional setup after loading the view.
        capitalLabel.text = "Tap any country to begin"
    }
    var score: Int = 0
    var randomCapital: String?
    
    func checkAnswer(answer: String) {
        if answer == randomCapital {
            score += 1
            scoreLabel.text = "Score: \(score)"
            ProgressHUD.showSuccess("Correct!")
        } else if capitalLabel.text == "Tap any country to begin" {
            ProgressHUD.showSuccess("Begin!")
        }
        else {
            ProgressHUD.showError("Wrong")
            score -= 1
            scoreLabel.text = "Score: \(score)"
        }
    }
    
    
    @IBAction func countryPressed(_ sender: UIButton) {
        let senderTag = sender.tag
        let answer = capitals.adder(arrayNum: senderTag)
        checkAnswer(answer: answer)
        randomCapital = capitals.caps.randomElement()!
        
        
        capitalLabel.text = "Capital: \(randomCapital!)"
    }
    
    @IBAction func ressetPressed(_ sender: Any) {
        score = 0
        scoreLabel.text = "Score: \(score)"
    }
}

