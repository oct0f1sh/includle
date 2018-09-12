//
//  IncludleTextField.swift
//  includle
//
//  Created by Duncan MacDonald on 9/10/18.
//  Copyright © 2018 Duncan MacDonald. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class IncludleTextField: UIView {
    @IBInspectable var placeholderText: String = "TextField"
    
    var backgroundView: UIView!
    var textField: UITextField!
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 230, height: 65)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func draw(_ rect: CGRect) {
        setupBackground()
        setupTextField()
        self.refreshView()
    }
    
    func refreshView() {
        setNeedsDisplay()
    }
    
    // create rounded background bubble
    func setupBackground() {
        self.backgroundView = UIView(frame: self.bounds)
        self.backgroundView.backgroundColor = UIColor.white
        self.backgroundView.layer.cornerRadius = 20
        self.backgroundView.layer.shadowRadius = Style.shadow.shadowRadius
        self.backgroundView.layer.shadowColor = Style.shadow.shadowColor
        self.backgroundView.layer.shadowOffset = Style.shadow.shadowOffset
        self.backgroundView.layer.shadowOpacity = 1
        
        addSubview(self.backgroundView)
    }
    
    // create text field
    func setupTextField() {
        self.textField = UITextField(frame: self.bounds)
        self.textField.placeholder = placeholderText
        self.textField.center = self.backgroundView.center
        self.textField.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 26)
        self.textField.textAlignment = .left
        
        self.textField.textAlignment = .center
        
        textField.attributedPlaceholder = NSAttributedString(string: placeholderText,
                                                             attributes: [.font: UIFont(name: "AppleSDGothicNeo-Light", size: 26) as Any])
        
        addSubview(self.textField)
    }
}
