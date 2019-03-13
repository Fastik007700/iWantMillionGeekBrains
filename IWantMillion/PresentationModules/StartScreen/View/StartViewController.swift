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
    
    @IBOutlet weak var questionSequenseControl: UISegmentedControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        outputView?.viewLoaded()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        outputView?.viewDidAppeared()
        outputView?.checkStrategy(strategyNumber: questionSequenseControl.selectedSegmentIndex)
    }
    
    func setupUI() {
        self.view.backgroundColor = .green
    }
    
    @IBAction func startGame(_ sender: Any) {
        outputView?.checkStrategy(strategyNumber: questionSequenseControl.selectedSegmentIndex)
        outputView?.tapStartGame()
    }
    
    @IBAction func showResults(_ sender: Any) {
        outputView?.tapResults()
    }
    
    
    @IBAction func addNewQuestion(_ sender: Any) {
        outputView?.showAddQuestion()
    }
}

extension StartViewController: StartViewControllerInput {
    
    func setBestResultWith(value: Int) {
        resultLabel.text = "Ваш лучший результ: \(value)%"
    }
}

