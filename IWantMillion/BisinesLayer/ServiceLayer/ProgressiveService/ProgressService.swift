//
//  ProgressService.swift
//  IWantMillion
//
//  Created by Михаил on 10/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import Foundation


protocol ProgressService {
    
    func show(answerType: AswerType, complection: @escaping () -> Void)
    
    func showAlertAboutEmptyText()
    
    func showAlertWhenFinishAddingQuestion(complection: @escaping () -> Void)
    
}
