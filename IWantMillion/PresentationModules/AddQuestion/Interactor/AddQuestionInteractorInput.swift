//
//  AddQuestionInteractorInput.swift
//  IWantMillion
//
//  Created by Михаил on 13/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import Foundation


protocol AddQuestionInteractorInput {
    
    func setQuestionText(text: String)
    
    func setFirstVar(text: String)
    
    func setSecondVar(text: String)
    
    func setThirdVar(text: String)
    
    func setFourthVar(text: String)
    
    func setCorrectAnswer(number: CorrectAnswerNumber)
    
    func addCustomQuestion()
}
