//
//  Questions.swift
//  IWantMillion
//
//  Created by Михаил on 05/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import Foundation

enum CorrectAnswerNumber {
    case first
    case second
    case third
    case fourth
}

struct Question {
    let questionText: String
    let firstAnswer: String
    let secondAnswer: String
    let thirdAnswer: String
    let fourthAnswer: String
    let correctAnswerNumber: CorrectAnswerNumber
}
