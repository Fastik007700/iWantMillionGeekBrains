//
//  ViewController.swift
//  IWantMillion
//
//  Created by Михаил on 05/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import UIKit

final class StartViewController: UIViewController {
    
           var outputView: StartViewControllerOutput?
    @IBOutlet weak var resultLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        outputView?.viewLoaded()
       // setupUI()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        outputView?.viewDidAppeared()
    }
    
    func setupUI() {
        self.view.backgroundColor = .green
    }
    
    @IBAction func startGame(_ sender: Any) {
        outputView?.tapStartGame()
    }
    
    @IBAction func showResults(_ sender: Any) {
        outputView?.tapResults()
    }
    
}

extension StartViewController: StartViewControllerInput {
    
    func setBestResultWith(value: Int) {
        resultLabel.text = "Ваш лучший результ: \(value)%"
    }
}

