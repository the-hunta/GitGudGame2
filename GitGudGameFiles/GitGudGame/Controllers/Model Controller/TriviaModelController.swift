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


    //Tempory question resource https://www.cosmopolitan.com/uk/worklife/a32612392/best-true-false-quiz-questions/
    let question = ["Prince Harry is taller than Prince William","The star sign Aquarius is represented by a tige","Meryl Streep has won two Academy Awards","Marrakesh is the capital of Morocco","Idina Menzel sings 'let it go' 20 times in 'Let It Go' from Frozen"]

    //Answer Array: we could compare answer[0] with what user tapped
    let answer = ["False","True","False","False","False"]



    //initially show first question which is question[0]
    //should be called when user click true or false button
    func fetchQuestion() -> String {
        return question[questionIndexNumber]
    }


    //should be called when user click true or false button
    //question[0]  -> question[1] -> question[2]
    func nextQuestion() {
        questionIndexNumber += 1
    }



}//End of Class
