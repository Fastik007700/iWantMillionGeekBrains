//
//  GameServiceImp.swift
//  IWantMillion
//
//  Created by Михаил on 10/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import Foundation


final class GameServiceImpl: GameService {

    func setGameSession(gameSession: GameSession) {
        Game.shared.gameSession = gameSession
    }
    
    func getGameSession() -> GameSession? {
        return Game.shared.gameSession
    }

}
