//
//  GameStrategy.swift
//  IWantMillion
//
//  Created by Михаил on 12/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import Foundation

enum Strategy {
    case random
    case inSequense
}

protocol GameStrategyProtocol {
    func getQuestion(questionSequense: [Question]) -> [Question]
}
