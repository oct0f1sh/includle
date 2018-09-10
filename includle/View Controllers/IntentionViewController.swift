//
//  IntentionViewController.swift
//  includle
//
//  Created by Duncan MacDonald on 9/9/18.
//  Copyright © 2018 Duncan MacDonald. All rights reserved.
//

import Foundation
import UIKit

class IntentionViewController: UIViewController {
    @IBOutlet weak var joinRoomButton: UIButton!
    @IBOutlet weak var createRoomButton: UIButton!
    
    override func viewDidLoad() {
        layoutButtons()
    }
    
    func layoutButtons() {
        joinRoomButton.layer.cornerRadius = Style.button.cornerRadius
        createRoomButton.layer.cornerRadius = Style.button.cornerRadius
    }
}
