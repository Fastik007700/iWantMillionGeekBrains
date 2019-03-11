//
//  File.swift
//  IWantMillion
//
//  Created by Михаил on 10/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import Foundation

protocol PresentationContainer {
    
    var progressService: ProgressService {get}
}

final class PresentationContainerImp: PresentationContainer {
    
    var progressService: ProgressService {
        return ProgressServiceImp()
    }
    
    
}
