//
//  GameAssambly.swift
//  IWantMillion
//
//  Created by Михаил on 10/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import UIKit


class GameAssembly {
    
    static func assamblyModule(with viewController: GameViewController, withStrategy: Strategy) {
        
        let router = GameRouter()
        let dataService = DIContainerImp.coreContainer.makeDataService
        let questionServise = DIContainerImp.coreContainer.makeQuestionService
        let progressiveService = DIContainerImp.presentationContainer.progressService
        let interactor = GameInteractor(questionService: questionServise, dataService: dataService)
        let presentor = GamePresenter(view: viewController, interactor: interactor, router: router, withStrategy: withStrategy, progressiveService: progressiveService)
        
        viewController.outputView = presentor
        interactor.output = presentor
        router.transitionHandler = viewController
    }
    
    static func createViewControllerAndAssemblyModule(withStrategy: Strategy) -> GameViewController {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let viewController = storyboard.instantiateViewController(withIdentifier: "gameViewController") as! GameViewController
        
        GameAssembly.assamblyModule(with: viewController, withStrategy: withStrategy)
        
        return viewController
    }
    
}
