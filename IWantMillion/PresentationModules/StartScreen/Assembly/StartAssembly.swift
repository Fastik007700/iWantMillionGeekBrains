//
//  StartAssambly.swift
//  IWantMillion
//
//  Created by Михаил on 10/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import UIKit

class StartAssembly {
    
    static func assamblyModule(with viewController: StartViewController) {
        
        let router = StartRouter()
        let dataService = DIContainerImp.coreContainer.makeDataService
        let interactor = StartInteractor(dataService: dataService)
        let presentor = StartPresenter(interactor: interactor, router: router, view: viewController)
        
        viewController.outputView = presentor
        interactor.output = presentor
        router.transitionHandler = viewController
    }
    
    static func createViewControllerAndAssemblyModule() -> StartViewController {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let viewController = storyboard.instantiateViewController(withIdentifier: "startViewController") as! StartViewController
        
        StartAssembly.assamblyModule(with: viewController)
        
        return viewController
    }
    
}
