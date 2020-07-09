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


    var questions: [Question] = {
    }



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
