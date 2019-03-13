//
//  StartRouterInput.swift
//  IWantMillion
//
//  Created by Михаил on 10/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import Foundation

protocol StartRouterInput {
    
    func showGameScreen(withStrategy: Strategy)
    
    func openAddQuestion()
    
    func showResultsScreen()
}
