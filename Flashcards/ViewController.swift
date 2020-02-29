//
//  ViewController.swift
//  Flashcards
//
//  Created by Heba Sattar on 2/15/20.
//  Copyright © 2020 Heba Sattar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var AnswerLabel: UILabel!
    @IBOutlet weak var Card: UIView!
    
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Card.layer.cornerRadius = 20.0
        Card.layer.shadowRadius = 15.0
        Card.layer.shadowOpacity = 0.2
        //Card.clipsToBounds = true
        QuestionLabel.clipsToBounds = true
        QuestionLabel.layer.cornerRadius = 20.0
        AnswerLabel.clipsToBounds = true
        AnswerLabel.layer.cornerRadius = 20.0
        
        button1.layer.cornerRadius = 10.0
        button2.layer.cornerRadius = 10.0
        button3.layer.cornerRadius = 10.0
        
        button1.layer.borderWidth = 3.0
        button1.layer.borderColor = #colorLiteral(red: 0, green: 0.6222990155, blue: 0.6969066262, alpha: 1)
        button2.layer.borderWidth = 3.0
        button2.layer.borderColor = #colorLiteral(red: 0, green: 0.6222990155, blue: 0.6969066262, alpha: 1)
        button3.layer.borderWidth = 3.0
        button3.layer.borderColor = #colorLiteral(red: 0, green: 0.6222990155, blue: 0.6969066262, alpha: 1)

    }
    
    @IBAction func didTapFlashCard(_ sender: Any) {
        if (QuestionLabel.isHidden) {
            QuestionLabel.isHidden = false
        }
        else {
            QuestionLabel.isHidden = true
            }
    }
    
    @IBAction func didTapButtonOne(_ sender: Any) {
        button1.isHidden = true
    }
    
    
    @IBAction func didTapButtonTwo(_ sender: Any) {
        QuestionLabel.isHidden = true
    }
    
    
    @IBAction func DidTapButtonThree(_ sender: Any) {
        button3.isHidden = true
    }
    
    func updateFlashCard(question: String, answer: String, extraAns1: String, extraAns2: String) {
        QuestionLabel.text = question
        button1.setTitle(extraAns1, for: .normal)
        button2.setTitle(answer, for: .normal)
        button3.setTitle(extraAns2, for: .normal)
        AnswerLabel.text = answer
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let navigationController = segue.destination as! UINavigationController
        let creationController = navigationController.topViewController as! CreationViewController
        creationController.flashcardsController = self
        if segue.identifier == "EditSegue" {
            creationController.initialQuestion = QuestionLabel.text
            creationController.initialAnswer = AnswerLabel.text
        
        }
        //else {
         //   creationController.initialQuestion = "Question"
        //    creationController.initialAnswer = "Answer"
       // }
        
    }
}
