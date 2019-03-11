//
//  QuestionServiceImp.swift
//  IWantMillion
//
//  Created by Михаил on 10/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import Foundation

final class QuestionServiceImp: QuestionService {
    
    func getQuestionQuality() -> Int {
        
        return getAllQuestions().count
    }
    
    
    private var questionNumber = -1
    
    func getQuestion() -> Question {
        questionNumber += 1
        return getAllQuestions()[questionNumber]
    }

    
    private func getAllQuestions() -> [Question] {
        
        return [Question(questionText: "Как правильно закончить пословицу: «Не откладывай на завтра то, что можно…»?", firstAnswer: "сделать сегодня", secondAnswer: "сделать послезавтра", thirdAnswer: "сделать через месяц", fourthAnswer: "никогда не делать", correctAnswerNumber: .first),
                
                Question(questionText: "Что говорит человек, когда замечает нечто необычное?", firstAnswer: "попало в лоб", secondAnswer: "залетело в рот", thirdAnswer: "накапало в уши", fourthAnswer: "бросилось в глаза", correctAnswerNumber: .fourth),
                
                Question(questionText: "Что помогает туристу ориентироваться в незнакомом городе?", firstAnswer: "путепровод", secondAnswer: "путеукладчик", thirdAnswer: "путеводитель", fourthAnswer: "путеводная звезда", correctAnswerNumber: .third),
                
                Question(questionText: "Какой наряд прославил баснописец Крылов?", firstAnswer: "тришкин кафтан", secondAnswer: "ивашкин армяк", thirdAnswer: "прошкин зипун", fourthAnswer: "машкин сарафан", correctAnswerNumber: .first),
                
                Question(questionText: "Как звали старшую сестру императора Петра Первого?", firstAnswer: "Вера", secondAnswer: "Надежда", thirdAnswer: "Любовь", fourthAnswer: "Софья", correctAnswerNumber: .first),
                
                Question(questionText: "Что не бывает морским?", firstAnswer: "рельс", secondAnswer: "огурец", thirdAnswer: "гребешок", fourthAnswer: "узел", correctAnswerNumber: .first)
                
                
        
        ]
    }
    
    
}
