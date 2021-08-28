//
//  ViewController.swift
//  chooseYourStory
//
//  Created by F1xTeoNtTsS on 27.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var confView = MainView()
    var storyLine = CreateStory()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        confView.setupView(view)
        updateUI()
        confView.topButton.addTarget(self, action: #selector(choiceMade), for: .touchUpInside)
        confView.bottomButton.addTarget(self, action: #selector(choiceMade), for: .touchUpInside)
    }

    @objc func choiceMade(_ sender: UIButton){
        guard let userAnswer = sender.currentTitle else { return }
        storyLine.checkChoise(userAnswer)
        animation(sender)
        
    }
    
    func updateUI() {
        confView.label.text = storyLine.storyText()
        confView.topButton.setTitle(storyLine.choiseOneText(), for: .normal)
        confView.bottomButton.setTitle(storyLine.choiseTwoText(), for: .normal)
    }
    
    @objc func animation(_ sender: UIButton){
        UIView.animate(withDuration: 0.2, animations: {
            sender.alpha = 0
        }, completion: {done in
            if done {
                UIView.animate(withDuration: 0.2, animations: {
                    sender.alpha = 1
                    self.updateUI()
                })
            }
        })
    }
}

