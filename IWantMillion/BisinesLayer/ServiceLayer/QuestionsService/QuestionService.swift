//
//  QuestionService.swift
//  IWantMillion
//
//  Created by Михаил on 10/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import Foundation

protocol QuestionService {
    
    func getQuestion() -> Question
    func getQuestionQuality() -> Int
}
