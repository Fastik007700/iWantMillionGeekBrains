//
//  File.swift
//  IWantMillion
//
//  Created by Михаил on 10/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import Foundation

protocol DIContainer {
    
    static var coreContainer: CoreContainer {get}
    static var presentationContainer: PresentationContainer {get}
    
}

class DIContainerImp: DIContainer
{
    static var coreContainer: CoreContainer {
        return self.shared.coreContainer
    }
    
    static var presentationContainer: PresentationContainer {
        return self.shared.presentationContainer
    }
    
    private var coreContainer: CoreContainer
    private var presentationContainer: PresentationContainer
    
    init() {
        self.coreContainer = CoreContainerImp()
        self.presentationContainer = PresentationContainerImp()
    }
    
    private static let shared = DIContainerImp()
    
}


