//
//  BackgroundImage.swift
//  chooseYourStory
//
//  Created by F1xTeoNtTsS on 27.08.2021.
//

import UIKit

class BackgroundImage: UIImageView {

    let forrestImage: UIImageView = {
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "background")
        backgroundImage.contentMode = .scaleAspectFill
        return backgroundImage
    }() 

}
