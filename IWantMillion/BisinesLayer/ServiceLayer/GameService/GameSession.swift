//
//  GameSession.swift
//  IWantMillion
//
//  Created by Михаил on 10/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import Foundation

protocol GameSessionDelegate: class {
    
    func returnAllQuestionNumber() -> Int
    func returnCorrectQuestionsNumber() -> Int
    func returnQuestionNumberInGameSession() -> Int
}

class GameSession {
    
     var correctQuestionsCount: Int {
        get {
            return delegate?.returnCorrectQuestionsNumber() ?? 0
        }
    }
     var allQuestionsCount: Int {
        get {
            return delegate?.returnAllQuestionNumber() ?? 0
        }
    }
    
     var questionNumber: Int {
        get {
            return delegate?.returnQuestionNumberInGameSession() ?? 1
        }
    }
    
    weak var delegate: GameSessionDelegate?

}
