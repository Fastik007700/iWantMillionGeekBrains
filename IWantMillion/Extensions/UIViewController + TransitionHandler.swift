//
//  UIViewController + TransitionHandler.swift
//  IWantMillion
//
//  Created by Михаил on 10/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import UIKit


extension UIViewController: TransitionHandler {
    
    func dismissViewController() {
        navigationController?.dismiss(animated: true, completion: nil)
    }
    
    func pushModule(withViewController viewController: UIViewController) {
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    func presentModule(withViewController viewController: UIViewController) {
        present(viewController, animated: true, completion: nil)
    }
    
    func close() {
        if (navigationController?.viewControllers.count ?? 0) > 1 {
            navigationController?.popViewController(animated: true)
        } else {
            navigationController?.dismiss(animated: true, completion: nil)
        }
    }
}

