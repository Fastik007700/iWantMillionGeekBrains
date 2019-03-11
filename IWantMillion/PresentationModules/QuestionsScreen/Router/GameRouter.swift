//
//  GameRouter.swift
//  IWantMillion
//
//  Created by Михаил on 10/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import Foundation

final class GameRouter: GameRouterInput {
    
    weak var transitionHandler: TransitionHandler?
    
    func stopGame() {
        transitionHandler?.close()
    }
    
}
