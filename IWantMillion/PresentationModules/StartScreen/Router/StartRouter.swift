//
//  StartRouter.swift
//  IWantMillion
//
//  Created by Михаил on 10/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import Foundation


class StartRouter: StartRouterInput {
    
    weak var transitionHandler: TransitionHandler?
    
    func showGameScreen(withStrategy: Strategy) {
        let vc = GameAssambly.createViewControllerAndAssemblyModule(withStrategy: withStrategy)
        transitionHandler?.pushModule(withViewController: vc)
    }
    
    func showResultsScreen() {
        print("showResults")
    }
    
    
}
