//
//  StartInteractor.swift
//  IWantMillion
//
//  Created by Михаил on 10/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import Foundation


final class StartInteractor {
    
    private var dataService: DataService?
    var output: StartInteractorOutput?
    
    init(dataService: DataService) {
        self.dataService = dataService
    }
}

extension StartInteractor: StartInteractorInput {
    
    func getBestResult() -> Int {
        
        var returnResult = 0
        
        guard let results = self.dataService?.loadResults() else {return 0}
        
        for result in results {
            if result.percentOfCorrect > returnResult {
                returnResult = result.percentOfCorrect
            }
        }
        return returnResult
        
    }
    
    
    func getStrategy(strategyNumber: Int) -> Strategy {
        
        switch strategyNumber {
        case 0:
            return Strategy.random
        case 1:
            return Strategy.inSequense
        default:
            return Strategy.inSequense
        }
    }
    
    
}
