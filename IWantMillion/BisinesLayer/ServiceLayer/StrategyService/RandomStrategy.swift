//
//  RandomStrategy.swift
//  IWantMillion
//
//  Created by Михаил on 12/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import Foundation

class RandomStrategy: GameStrategyProtocol {
    
    func getQuestion(questionSequense: [Question]) -> [Question] {
        return questionSequense.shuffled()
    }
    
    
}
