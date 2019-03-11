//
//  GameViewController.swift
//  IWantMillion
//
//  Created by Михаил on 10/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    
    @IBOutlet weak var questionLabel: UILabel!
    
    var outputView: GameViewControllerOutput?
    
    @IBOutlet weak var answer1Button: UIButton!
    @IBOutlet weak var answer2Button: UIButton!
    @IBOutlet weak var answer3Button: UIButton!
    @IBOutlet weak var answer4button: UIButton!
    
    private var gameSession = GameSession()

    override func viewDidLoad() {
        super.viewDidLoad()
        outputView?.viewLoaded()
        setupGameSession()
        setupUI()
    }
    
    
    private func setupUI() {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    private func setupGameSession() {
        gameSession.delegate = outputView
        Game.shared.gameSession = gameSession
    }
    

    @IBAction func tap1(_ sender: Any) {
        outputView?.tapFirst()
    }
    
    @IBAction func tap2(_ sender: Any) {
        outputView?.tapSecond()
        print(Game.shared.gameSession?.correctQuestionsCount)
    }
    
    @IBAction func tap3(_ sender: Any) {
        outputView?.tapThird()
    }
    
    @IBAction func tap4(_ sender: Any) {
        outputView?.tapFourth()
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension GameViewController: GameViewControllerInput {
    
    func getQuestionText(question: Question) {
        questionLabel.text = question.questionText
        answer1Button.setTitle(question.firstAnswer, for: .normal)
        answer2Button.setTitle(question.secondAnswer, for: .normal)
        answer3Button.setTitle(question.thirdAnswer, for: .normal)
        answer4button.setTitle(question.fourthAnswer, for: .normal)
    }
    
     func dismissView() {
        self.dismiss(animated: true, completion: nil)
    }
    
}
