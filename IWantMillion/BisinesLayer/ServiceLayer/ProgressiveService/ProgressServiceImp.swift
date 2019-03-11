//
//  ProgressiveServiceImp.swift
//  IWantMillion
//
//  Created by Михаил on 10/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//
enum AswerType {
    
    case correct
    case notCorrect
    case lastQuestion
    
}

import UIKit


final class ProgressServiceImp: ProgressService {
    
    
    private func setupAlertViewController(aswerType: AswerType, complection: @escaping () -> Void) {
        
        let allertViewController = UIAlertController(title: "", message: "", preferredStyle: .alert)
        
        let correctAnswerAction = UIAlertAction(title: "Дальше", style: .cancel) { _ in
            complection()
        }
        let notCorrectAnswerAction = UIAlertAction(title: "Закончить игру", style: .cancel) { _ in
            complection()
        }
        let lastQuestionAnswerAction = UIAlertAction(title: "Ура!", style: .cancel, handler: { _ in
            complection()
        })
        
        switch aswerType {
        case .correct:
            allertViewController.title = "Правильно!"
            allertViewController.addAction(correctAnswerAction)
        case .notCorrect:
            allertViewController.title = "Неправильно"
            allertViewController.addAction(notCorrectAnswerAction)
        case .lastQuestion:
            allertViewController.title = "Поздравляю, вы стали миллионером!"
            allertViewController.addAction(lastQuestionAnswerAction)
        }
        
        UIApplication.shared.keyWindow?.rootViewController?.present(allertViewController, animated: true, completion: nil)
    }

    
    func show(answerType: AswerType, complection: @escaping () -> Void) {
        
        self.setupAlertViewController(aswerType: answerType, complection: complection)
    }
    
}
