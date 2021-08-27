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
    let backgroundImage = BackgroundImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(backgroundImage.forrestImage)
        confView.setupView(view)
        updateUI()
        confView.topButton.addTarget(self, action: #selector(choiceMade), for: .touchUpInside)
        confView.bottomButton.addTarget(self, action: #selector(choiceMade), for: .touchUpInside)
    }

    @objc func choiceMade(_ sender: UIButton){
        guard let userAnswer = sender.currentTitle else { return }
        storyLine.checkChoise(userAnswer)
        updateUI()
    }
    
    func updateUI() {
        confView.label.text = storyLine.storyText()
        confView.topButton.setTitle(storyLine.choiseOneText(), for: .normal)
        confView.bottomButton.setTitle(storyLine.choiseTwoText(), for: .normal)
    }
}

