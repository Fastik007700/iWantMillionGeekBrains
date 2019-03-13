//
//  AddQuestionRouter.swift
//  IWantMillion
//
//  Created by Михаил on 13/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import Foundation

final class AddQuestionRouter: AddQuestionRouterInput {
    
    weak var transitionHandler: TransitionHandler?

    func goToMainMenu() {
        transitionHandler?.close()
    }
    
    
}
