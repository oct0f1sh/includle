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
    @IBOutlet weak var textBox: UITextField!
    
    var didSelectJoin: Bool = false
    
    @IBAction func unwindToIntention(_ sender: UIStoryboardSegue) {}
    
    override func viewDidLoad() {
        layoutButtons()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showRoomSetup" {
            let vc: RoomSetupViewController = segue.destination as! RoomSetupViewController
            
            if didSelectJoin {
                vc.roomType = .joinRoom
            } else {
                vc.roomType = .createRoom
            }
        }    }
    
    func layoutButtons() {
        joinRoomButton.layer.cornerRadius = Style.button.cornerRadius
        createRoomButton.layer.cornerRadius = Style.button.cornerRadius
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            didSelectJoin = true
        case 1:
            didSelectJoin = false
        default:
            print("INVALID TAG")
        }
        
        self.performSegue(withIdentifier: "showRoomSetup", sender: self)
    }
}
