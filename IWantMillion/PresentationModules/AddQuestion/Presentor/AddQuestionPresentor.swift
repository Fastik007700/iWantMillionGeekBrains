//
//  AddQuestionPresentor.swift
//  IWantMillion
//
//  Created by Михаил on 13/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import Foundation


class AddQuestionPresentor {
    
    fileprivate var view: AddQuestionViewControllerInput
    fileprivate var router: AddQuestionRouterInput
    fileprivate var interactor: AddQuestionInteractorInput
    
    private var progressiveServise: ProgressService
    private var componentNumberOfQuestion: Int
    private var bufferText = ""
    
    init(view: AddQuestionViewControllerInput, router: AddQuestionRouterInput, interactor: AddQuestionInteractorInput, progressiveServise: ProgressService) {
        self.view = view
        self.router = router
        self.interactor = interactor
        self.progressiveServise = progressiveServise
        self.componentNumberOfQuestion = 0
    }
}

extension AddQuestionPresentor: AddQuestionViewControllerOutput {
    
    func viewDidLoaded() {
        self.view.setMainLabelText(withText: "Введите текст вопроса")
        self.view.setSegmetedControlVisability(withBool: true)
        self.view.setTextFieldVisability(withBool: false)
        
    }
    
    func addComponentToQuestion() {
        switch self.componentNumberOfQuestion {
        case 0:
            self.interactor.setQuestionText(text: bufferText)
            self.view.setMainLabelText(withText: "Введите первый вариант ответа")
        case 1:
            self.interactor.setFirstVar(text: bufferText)
            self.view.setMainLabelText(withText: "Введите второй вариант ответа")
        case 2:
            self.interactor.setSecondVar(text: bufferText)
            self.view.setMainLabelText(withText: "Введите третий вариант ответа")
        case 3:
            self.interactor.setThirdVar(text: bufferText)
            self.view.setMainLabelText(withText: "Введите четвертый вариант ответа")
        case 4:
            self.interactor.setFourthVar(text: bufferText)
            self.view.setMainLabelText(withText: "Укажите номер правильного варианта ответа")
            self.view.setSegmetedControlVisability(withBool: false)
            self.view.setTextFieldVisability(withBool: true)
        default:
            print("errorWithAddingComponents")
        }
        
        self.componentNumberOfQuestion += 1
    }
    
    func getTextInTextField(text: String) {
        self.bufferText = text
    }
    
    func showAlertAboutEmptyTextField() {
        self.progressiveServise.showAlertAboutEmptyText()
    }
    
    func getCorrectAnswerNumber(number: Int) {
        switch number {
        case 0:
            self.interactor.setCorrectAnswer(number: CorrectAnswerNumber.first)
        case 1:
            self.interactor.setCorrectAnswer(number: CorrectAnswerNumber.second)
        case 2:
            self.interactor.setCorrectAnswer(number: CorrectAnswerNumber.third)
        case 3:
            self.interactor.setCorrectAnswer(number: CorrectAnswerNumber.fourth)
        default:
            print("errorWith")
        }
    }
    
    func showEndAlert() {
        self.progressiveServise.showAlertWhenFinishAddingQuestion { [weak self] in
            self?.interactor.addCustomQuestion()
            self?.router.goToMainMenu()
        }
    }
    
    
}

extension AddQuestionPresentor: AddQuestionInteractorOutput {
    
}
