//
//  TransitionHandler.swift
//  IWantMillion
//
//  Created by Михаил on 10/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import UIKit

protocol TransitionHandler: class {
    
    func pushModule(withViewController viewController: UIViewController)
    
    func presentModule(withViewController viewController: UIViewController)
    
    func close()
    
    func dismissViewController()
}
