//
//  AddQuestionViewControllerOutput.swift
//  IWantMillion
//
//  Created by Михаил on 13/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import Foundation

protocol AddQuestionViewControllerOutput {
    
    func viewDidLoaded()
    
    func addComponentToQuestion()
    
    func getTextInTextField(text: String)
    
    func showAlertAboutEmptyTextField()
    
    func showEndAlert()
    
    func getCorrectAnswerNumber(number: Int)
    
}
