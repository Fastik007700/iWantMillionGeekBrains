//
//  DataService.swift
//  IWantMillion
//
//  Created by Михаил on 10/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import Foundation

protocol DataService {
    
    func saveResult(results: [Result])
    func loadResults() -> [Result]
}
