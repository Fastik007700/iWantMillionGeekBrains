//
//  StartPresentor.swift
//  IWantMillion
//
//  Created by Михаил on 10/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import Foundation


final class StartPresenter {
    
    fileprivate var interactor: StartInteractorInput
    fileprivate var router: StartRouterInput
    fileprivate var view: StartViewControllerInput
    
    private var strategy: Strategy!
    
    init(interactor: StartInteractorInput, router: StartRouterInput, view: StartViewControllerInput) {
        
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

extension StartPresenter: StartViewControllerOutput {
    
    func showAddQuestion() {
        self.router.openAddQuestion()
    }
    
    
    func checkStrategy(strategyNumber: Int) {
        self.strategy = interactor.getStrategy(strategyNumber: strategyNumber)
    }
    
    func viewDidAppeared() {
        self.view.setBestResultWith(value: interactor.getBestResult())
    }
    
    func viewLoaded() {
        self.view.setBestResultWith(value: interactor.getBestResult())
    }
    
    func tapStartGame() {
        self.router.showGameScreen(withStrategy: self.strategy)
    }
    
    func tapResults() {
        self.router.showResultsScreen()
    }

}

extension StartPresenter: StartInteractorOutput {
    
}
