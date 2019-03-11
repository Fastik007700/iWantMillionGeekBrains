//
//  CoreContainer.swift
//  IWantMillion
//
//  Created by Михаил on 10/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import Foundation

protocol CoreContainer {
    
    var makeQuestionService: QuestionService {get}
    var makeGameService: GameService {get}
    var makeDataService: DataService {get}
}

final class CoreContainerImp: CoreContainer {
    
    var makeDataService: DataService {
        return DataServiceImpl()
    }
    
    var makeQuestionService: QuestionService {
        return QuestionServiceImp()
    }
    
    var makeGameService: GameService {
        return GameServiceImpl()
    }
    

}
