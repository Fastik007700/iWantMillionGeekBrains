//
//  AddQuestionInteractor.swift
//  IWantMillion
//
//  Created by Михаил on 13/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import Foundation


final class AddQuestionInteractor {
    
    fileprivate let questionService: QuestionService
    private var questionText = ""
    private var firstVar = ""
    private var secondVar = ""
    private var thirdVar = ""
    private var fourthVar = ""
    private var correctAswer: CorrectAnswerNumber = .first
    
     var output: AddQuestionInteractorOutput?
    
    init(questionService: QuestionService) {
        self.questionService = questionService
    }
}


extension AddQuestionInteractor: AddQuestionInteractorInput {
    
    func addCustomQuestion() {
        let question = Question(questionText: questionText, firstAnswer: firstVar, secondAnswer: secondVar, thirdAnswer: thirdVar, fourthAnswer: fourthVar, correctAnswerNumber: correctAswer)
        self.questionService.addQuestion(question: question)
        print(question)
        print("\(self.questionService.getQuestionQuality())!@@@@@@@")
    }
    
    func setQuestionText(text: String) {
        self.questionText = text
    }
    
    func setFirstVar(text: String) {
        self.firstVar = text
    }
    
    func setSecondVar(text: String) {
        self.secondVar = text
    }
    
    func setThirdVar(text: String) {
        self.thirdVar = text
    }
    
    func setFourthVar(text: String) {
        self.fourthVar = text
    }
    
    func setCorrectAnswer(number: CorrectAnswerNumber) {
        self.correctAswer = number
    }

}
