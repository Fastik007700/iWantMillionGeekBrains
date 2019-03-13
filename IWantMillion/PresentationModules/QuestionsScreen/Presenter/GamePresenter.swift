//
//  GamePresentor.swift
//  IWantMillion
//
//  Created by Михаил on 10/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import Foundation


final class GamePresenter {
    
    fileprivate var view: GameViewControllerInput
    fileprivate var interactor: GameInteractorInput
    fileprivate var router: GameRouterInput
    
    fileprivate var progressiveService: ProgressService
    
    private var strategy: Strategy
    
    private var question: Question!
    
    init(view: GameViewControllerInput, interactor: GameInteractorInput, router: GameRouterInput, withStrategy: Strategy, progressiveService: ProgressService ) {
        self.view = view
        self.interactor = interactor
        self.router = router
        self.strategy = withStrategy
        self.progressiveService = progressiveService
    }
}

extension GamePresenter: GameViewControllerOutput {
    
    func viewLoaded() {
        
        guard let question = interactor.getQuestion(withStrategy: self.strategy) else {return}
        
        self.question = question
        view.getQuestionText(question: self.question)
    }
    
    func tapFirst() {
        
        interactor.questionChecker(questionInCheker: question, correctAnswerNumber: .first)
        
    }
    
    func tapSecond() {
        
        interactor.questionChecker(questionInCheker: question, correctAnswerNumber: .second)
    }
    
    func tapThird() {
        
        interactor.questionChecker(questionInCheker: question, correctAnswerNumber: .third)
    }
    
    func tapFourth() {
        
        interactor.questionChecker(questionInCheker: question, correctAnswerNumber: .fourth)
        
    }
}


extension GamePresenter: GameInteractorOutput {
    
    func correctAswer() {
        if interactor.getQuestionsCount() == interactor.getQuestionNumberInGameSession() {
            
            debugPrint("закончилисьб вопросы")
            let result = Result(percentOfCorrect: Int((interactor.getCorrectAnswerCount()/interactor.getQuestionsCount()) * 100), date: Date())
            
            interactor.saveResult(result: result)
            
            Game.shared.gameSession = nil
            
            self.progressiveService.show(answerType: .lastQuestion, complection: { [weak self] in self?.router.stopGame()})
        }
            
        else {
            guard let question = interactor.getQuestion(withStrategy: self.strategy) else {return}
            self.question = question
            
            self.progressiveService.show(answerType: .correct, complection:{ [weak self] in self?.view.getQuestionText(question: question)})
            
            
            debugPrint("правильный ответ")
        }
    }
    
    func notCorrectAswer() {
        let resultInt = Int(100 * interactor.getCorrectAnswerCount()/interactor.getQuestionsCount())
        let result = Result(percentOfCorrect: resultInt, date: Date())
        
        interactor.saveResult(result: result)
        debugPrint("неправильно ответил")
        
        Game.shared.gameSession = nil
        
        self.progressiveService.show(answerType: .notCorrect, complection: { [weak self] in self?.router.stopGame()})
        
    }
    
    
}

extension GamePresenter: GameSessionDelegate {
    
    func returnQuestionNumberInGameSession() -> Int {
        return self.interactor.getQuestionNumberInGameSession()
    }
    
    func returnAllQuestionNumber() -> Int {
        return self.interactor.getQuestionsCount()
    }
    
    func returnCorrectQuestionsNumber() -> Int {
        return self.interactor.getCorrectAnswerCount()
    }
    
}
