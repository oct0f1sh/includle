//
//  ViewController.swift
//  includle
//
//  Created by Duncan MacDonald on 9/9/18.
//  Copyright © 2018 Duncan MacDonald. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController {
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var interactCell: UIStackView!
    @IBOutlet weak var engageCell: UIStackView!
    
    @IBOutlet weak var continueButton: UIButton!
    
    @IBAction func unwindToOnboard(_ sender: UIStoryboardSegue) {
        UIView.animate(withDuration: 0.25, animations: {
            self.topLabel.alpha = 1
            self.descLabel.alpha = 1
            self.interactCell.alpha = 1
            self.engageCell.alpha = 1
            self.continueButton.alpha = 1
        })
    }
    
    override func viewDidLoad() {
        layoutButtons()
    }
    
    func layoutButtons() {
        continueButton.layer.cornerRadius = Style.button.cornerRadius
    }

    @IBAction func continueButtonTapped(_ sender: Any) {
        // fade everything but the name and segue to intention view
        UIView.animate(withDuration: 0.25, animations: {
            self.topLabel.alpha = 0
            self.descLabel.alpha = 0
            self.interactCell.alpha = 0
            self.engageCell.alpha = 0
            self.continueButton.alpha = 0
        }) { (_) in
            self.performSegue(withIdentifier: "showIntention", sender: self)
        }
    }
}

