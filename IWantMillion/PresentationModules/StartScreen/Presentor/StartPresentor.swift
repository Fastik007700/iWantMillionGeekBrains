//
//  StartPresentor.swift
//  IWantMillion
//
//  Created by Михаил on 10/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import Foundation


final class StartPresentor {
    
    fileprivate var interactor: StartInteractorInput
    fileprivate var router: StartRouterInput
    fileprivate var view: StartViewControllerInput
    
    init(interactor: StartInteractorInput, router: StartRouterInput, view: StartViewControllerInput) {
        
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

extension StartPresentor: StartViewControllerOutput {
    
    func viewDidAppeared() {
        self.view.setBestResultWith(value: interactor.getBestResult())
    }
    
    func viewLoaded() {
        self.view.setBestResultWith(value: interactor.getBestResult())
    }
    
    func tapStartGame() {
        self.router.showGameScreen()
    }
    
    func tapResults() {
        self.router.showResultsScreen()
    }

}

extension StartPresentor: StartInteractorOutput {
    
}
