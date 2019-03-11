//
//  GameInteractor.swift
//  IWantMillion
//
//  Created by Михаил on 10/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import Foundation

final class GameInteractor {
    
    fileprivate let questionService: QuestionService
    fileprivate let dataService: DataService
    private var questionNumberInGameSession: Int = 1
    private var correctAswerCount: Int = 0
    var output: GameInteractorOutput?
    
    init(questionService: QuestionService, dataService: DataService) {
        self.questionService = questionService
        self.dataService = dataService
    }
}

extension GameInteractor: GameInteractorInput {
    func saveResult(result: Result) {
        
        var arrayOfResult = dataService.loadResults()
        arrayOfResult.append(result)
        dataService.saveResult(results: arrayOfResult)
        
    }
    
    
    func getCorrectAnswerCount() -> Int {
        return self.correctAswerCount
    }
    
    func getQuestion() -> Question? {
        return self.questionService.getQuestion()
    }
    
    func getQuestionsCount() -> Int {
        return self.questionService.getQuestionQuality()
    }
    
    func getQuestionNumberInGameSession() -> Int {
        return questionNumberInGameSession
    }
    
    func questionChecker(questionInCheker: Question, correctAnswerNumber: CorrectAnswerNumber) {
        
        if questionInCheker.correctAnswerNumber == correctAnswerNumber {
            self.correctAswerCount += 1
            output?.correctAswer()
        }
        else {
            output?.notCorrectAswer()
        }
        
        self.questionNumberInGameSession += 1
    }
    
    
}

