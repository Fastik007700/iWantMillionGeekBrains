//
//  StarViewControllerOutput.swift
//  IWantMillion
//
//  Created by Михаил on 10/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import Foundation


protocol StartViewControllerOutput: class {
    
    func viewLoaded()
    
    func viewDidAppeared()
    
    func tapStartGame()
    
    func tapResults()
    
    func checkStrategy(strategyNumber: Int)
    
}
