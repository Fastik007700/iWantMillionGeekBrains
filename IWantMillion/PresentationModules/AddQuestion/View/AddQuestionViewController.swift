//
//  AddQuestionViewController.swift
//  IWantMillion
//
//  Created by Михаил on 13/03/2019.
//  Copyright © 2019 Михаил. All rights reserved.
//

import UIKit



final class AddQuestionViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var mainTextField: UITextField!
    
    @IBOutlet weak var chooseCorrectAnswer: UISegmentedControl!

    
    var outputView: AddQuestionViewControllerOutput?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        outputView?.viewDidLoaded()
    }
    
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        self.view.endEditing(true)
        if chooseCorrectAnswer.isHidden {
            if let text = mainTextField.text  {
                if !text.isEmpty {
                outputView?.getTextInTextField(text: text)
                outputView?.addComponentToQuestion()
                mainTextField.text = ""
                }

                else {
                    outputView?.showAlertAboutEmptyTextField()
                }
            }

        }
        else {
            outputView?.getCorrectAnswerNumber(number: chooseCorrectAnswer.selectedSegmentIndex)
            outputView?.showEndAlert()
        }
    }
}


extension AddQuestionViewController: AddQuestionViewControllerInput {
    
    func setMainLabelText(withText: String) {
        self.mainLabel.text = withText
    }
    
    func setSegmetedControlVisability(withBool: Bool) {
        self.chooseCorrectAnswer.isHidden = withBool
    }
    
    func setTextFieldVisability(withBool: Bool) {
        self.mainTextField.isHidden = withBool
    }
    
    
}

