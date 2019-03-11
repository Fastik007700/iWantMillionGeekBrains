//
//  GameInteractorInput.swift
//  IWantMillion
//
//  Created by Михаил on 10/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import Foundation


protocol GameInteractorInput: class {
    
    func getQuestion() -> Question?
    
    func getQuestionsCount() -> Int
    
    func getQuestionNumberInGameSession() -> Int
    
    func getCorrectAnswerCount() -> Int
    
    func questionChecker(questionInCheker: Question, correctAnswerNumber: CorrectAnswerNumber)
    
    func saveResult(result: Result)
    
}
