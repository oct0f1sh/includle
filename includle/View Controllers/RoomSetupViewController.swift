//
//  JoinRoomViewController.swift
//  includle
//
//  Created by Duncan MacDonald on 9/10/18.
//  Copyright © 2018 Duncan MacDonald. All rights reserved.
//

import Foundation
import UIKit

class RoomSetupViewController: UIViewController {
    @IBOutlet weak var roomCodeTextField: IncludleTextField!
    @IBOutlet weak var usernameTextField: IncludleTextField!
    
    @IBOutlet weak var actionButton: UIButton!
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var continueButton: UIButton!
    
    enum UserIntention {
        case joinRoom
        case createRoom
    }
    
    var roomType: UserIntention!
    
    override func viewDidLoad() {
        layoutButtons()
    }
    
    func layoutButtons() {
        backButton.layer.cornerRadius = Style.button.cornerRadius
        continueButton.layer.cornerRadius = Style.button.cornerRadius
        
        if roomType == .joinRoom {
            actionButton.setImage(#imageLiteral(resourceName: "camera"), for: .normal)
        } else {
            actionButton.setImage(#imageLiteral(resourceName: "refresh"), for: .normal)
            // ToDo: SHOULD THIS BE A LOCK?
        }
        
        actionButton.layer.cornerRadius = actionButton.bounds.width / 2
        actionButton.layer.shadowRadius = Style.shadow.shadowRadius
        actionButton.layer.shadowOffset = Style.shadow.shadowOffset
        actionButton.layer.shadowOpacity = 1
        actionButton.layer.shadowColor = Style.shadow.shadowColor
    }
    
    @IBAction func actionButtonTapped(_ sender: Any) {
        
    }
    
    @IBAction func continueButtonTapped(_ sender: Any) {
        
    }
}
