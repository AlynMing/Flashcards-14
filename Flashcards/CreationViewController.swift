//
//  CreationViewController.swift
//  Flashcards
//
//  Created by Heba Sattar on 2/29/20.
//  Copyright © 2020 Heba Sattar. All rights reserved.
//

import UIKit

class CreationViewController: UIViewController {
    
    var flashcardsController: ViewController!
    //var questionText: String = ""
    
    @IBOutlet weak var qTextField: UITextField!
    @IBOutlet weak var aTextField: UITextField!
    @IBOutlet weak var extraAns1: UITextField!
    @IBOutlet weak var extraAns2: UITextField!
    
    var initialQuestion: String?
    var initialAnswer: String?
    var initialans1: String?
    var initialans2: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //qTextField.text = "Question"
        //aTextField.text = "Answer"
        qTextField.text = initialQuestion
        aTextField.text = initialAnswer
        extraAns1.text = initialans1
        extraAns2.text = initialans2

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapCancel(_ sender: Any) {
        dismiss(animated: true)
    }
    
    
    @IBAction func didTapDone(_ sender: Any) {
        
        let questionText = qTextField.text
        let answerText = aTextField.text
        let extAns1 = extraAns1.text
        let extAns2 = extraAns2.text
        
        if (questionText == nil || answerText == nil || questionText!.isEmpty || answerText!.isEmpty || extAns1 == nil || extAns1!.isEmpty || extAns2 == nil || extAns2!.isEmpty) {
            let alert = UIAlertController(title: "Missing Text", message: "You left one of the fields blank", preferredStyle: .alert)
            present(alert, animated: true)
            let okAction = UIAlertAction(title: "Ok", style: .default)
            alert.addAction(okAction)
        }
        else {
        var isExisting = false
            if initialQuestion != nil {
                isExisting = true
            }
        flashcardsController.updateFlashCard(question: questionText!, answer: answerText!, extraAns1: extAns1!, extraAns2: extAns2!, isExisting: isExisting)
        
        dismiss(animated: true)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
