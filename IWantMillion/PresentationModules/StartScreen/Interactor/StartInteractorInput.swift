//
//  StartInteractorInput.swift
//  IWantMillion
//
//  Created by Михаил on 10/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import Foundation

protocol StartInteractorInput {
    
    func getBestResult() -> Int
    func getStrategy(strategyNumber: Int) -> Strategy
}
