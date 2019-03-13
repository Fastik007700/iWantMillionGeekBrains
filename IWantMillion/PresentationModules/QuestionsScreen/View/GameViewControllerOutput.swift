//
//  GameViewControllerOutput.swift
//  IWantMillion
//
//  Created by Михаил on 10/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import Foundation

protocol GameViewControllerOutput: GameSessionDelegate {
    
    func viewLoaded()
    
    func tapFirst()
    
    func tapSecond()
    
    func tapThird()
    
    func tapFourth()
    
    
    
    
}
