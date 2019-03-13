//
//  AddQuestionAssembly.swift
//  IWantMillion
//
//  Created by Михаил on 13/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import UIKit

final class AddQuestionAssembly {
    
    static func assamblyModule(with viewController: AddQuestionViewController) {
        
        let router = AddQuestionRouter()
        let questionServise = DIContainerImp.coreContainer.makeQuestionService
        let progressiveService = DIContainerImp.presentationContainer.progressService
        let interactor = AddQuestionInteractor(questionService: questionServise)
        let presentor = AddQuestionPresentor(view: viewController, router: router, interactor: interactor, progressiveServise: progressiveService)
        
        viewController.outputView = presentor
        interactor.output = presentor
        router.transitionHandler = viewController
    }
    
    static func createViewControllerAndAssemblyModule() -> AddQuestionViewController {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let viewController = storyboard.instantiateViewController(withIdentifier: "addQuestionViewController") as! AddQuestionViewController
        
        AddQuestionAssembly.assamblyModule(with: viewController)
        
        return viewController
    }
}
