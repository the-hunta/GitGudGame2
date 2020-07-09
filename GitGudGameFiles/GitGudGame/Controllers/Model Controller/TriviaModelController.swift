//
//  TriviaModelController.swift
//  GitGudGame
//
//  Created by Hunter Smith on 7/8/20.
//  Copyright © 2020 Hunter Smith. All rights reserved.
//

import Foundation

class QuestionControllers {

    //Source of Truth
    static let shared = QuestionControllers()

    //will be used for array index
    var questionIndexNumber = 0


    var questions: [Question] = [
        Question(question: "What is 1+1?", answer: ["1", "2", "3", "4"], correctAnswer: 0),
        Question(question: "Have you subscrbed to Seemu Apps", answer: ["Yes", "No", "I will", "No Thanks"], correctAnswer: 0),
        Question(question: "What is the Capital of Australia?", answer: ["Sydney", "Melbourne", "Adelaide", "Canberra"], correctAnswer: 3)
    ]



    //initially show first question which is question[0]
    //should be called when user click true or false button
    func fetchQuestion() -> Question {
        return questions[questionIndexNumber]
    }


    //should be called when user click true or false button
    //question[0]  -> question[1] -> question[2]
    func nextQuestion() {
        questionIndexNumber += 1
    }



}//End of Class
