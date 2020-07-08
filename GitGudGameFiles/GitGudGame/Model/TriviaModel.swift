//
//  TriviaModel.swift
//  GitGudGame
//
//  Created by Hunter Smith on 7/8/20.
//  Copyright © 2020 Hunter Smith. All rights reserved.
//

import Foundation
class Question {
    let question: String
    let answer: String
    let correctAnswer: Int

    init(question: String, answer: String, correctAnswer: Int) {
        self.question = question
        self.answer = answer
        self.correctAnswer = correctAnswer
    }
}
