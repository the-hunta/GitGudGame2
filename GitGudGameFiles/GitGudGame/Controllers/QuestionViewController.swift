//
//  QuestionViewController.swift
//  GitGudGame
//
//  Created by Connor Holland on 7/8/20.
//  Copyright © 2020 Hunter Smith. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    @IBOutlet weak var questionTextField: UITextView!
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    @IBOutlet weak var correctAnswerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionViews()
    }
    
    // MARK: - Actions
    
    @IBAction func buttonOneTapped(_ sender: Any) {
    }
    @IBAction func buttonTwoTapped(_ sender: Any) {
    }
    @IBAction func buttonThreeTapped(_ sender: Any) {
    }
    @IBAction func buttonFourTapped(_ sender: Any) {
    }
    
    
    
    // MARK: - Methods
    func questionViews() {
        let currentQuestion = QuestionControllers.shared.questions[0].question
        questionTextField.text = currentQuestion
        let answer1 = QuestionControllers.shared.questions[0].answer[0]
        let answer2 = QuestionControllers.shared.questions[0].answer[1]
        let answer3 = QuestionControllers.shared.questions[0].answer[2]
        let answer4 = QuestionControllers.shared.questions[0].answer[3]
        buttonOne.setTitle(answer1, for: .normal)
        buttonTwo.setTitle(answer2, for: .normal)
        buttonThree.setTitle(answer3, for: .normal)
        buttonFour.setTitle(answer4, for: .normal)
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
