//
//  QuestionViewController.swift
//  GitGudGame
//
//  Created by Connor Holland on 7/8/20.
//  Copyright © 2020 Hunter Smith. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    @IBOutlet weak var correctAnswerLabel: UILabel!
    
    
    // MARK: - Properties
    var question = QuestionControllers.shared.questionIndexNumber
    
    // MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        questionViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    // MARK: - Actions
    
    @IBAction func buttonOneTapped(_ sender: UIButton) {
        let correctAnswerIndex = QuestionControllers.shared.questions[question].correctAnswer
        let answerArray = QuestionControllers.shared.questions[question].answer
        let x = answerArray[correctAnswerIndex]
        print(x)
        if sender.currentTitle == x {
            print("Correct Answer")
        } else {
            print("Wrong Answer")
        }
        
        
    }
    @IBAction func buttonTwoTapped(_ sender: UIButton) {
        let correctAnswerIndex = QuestionControllers.shared.questions[question].correctAnswer
        let answerArray = QuestionControllers.shared.questions[question].answer
        let x = answerArray[correctAnswerIndex]
        print(x)
        if sender.currentTitle == x {
            print("Correct Answer")
        } else {
            print("Wrong Answer")
        }

        
    }
    @IBAction func buttonThreeTapped(_ sender: UIButton) {
        let correctAnswerIndex = QuestionControllers.shared.questions[question].correctAnswer
        let answerArray = QuestionControllers.shared.questions[question].answer
        let x = answerArray[correctAnswerIndex]
        print(x)
        if (sender as AnyObject).currentTitle == x {
            print("Correct Answer")
        } else {
            print("Wrong Answer")
        }
    }
    @IBAction func buttonFourTapped(_ sender: UIButton) {
        let correctAnswerIndex = QuestionControllers.shared.questions[question].correctAnswer
        let answerArray = QuestionControllers.shared.questions[question].answer
        let x = answerArray[correctAnswerIndex]
        print(x)
        if sender.currentTitle == x {
            print("Correct Answer")
        } else {
            print("Wrong Answer")
        }
    }
    
    
    
    // MARK: - Methods
    func questionViews() {
        let currentQuestion = QuestionControllers.shared.questions[question].question
        questionLabel.text = currentQuestion
        let answer1 = QuestionControllers.shared.questions[question].answer[0]
        let answer2 = QuestionControllers.shared.questions[question].answer[1]
        let answer3 = QuestionControllers.shared.questions[question].answer[2]
        let answer4 = QuestionControllers.shared.questions[question].answer[3]
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
