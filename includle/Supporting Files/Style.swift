//
//  Style.swift
//  includle
//
//  Created by Duncan MacDonald on 9/9/18.
//  Copyright © 2018 Duncan MacDonald. All rights reserved.
//

import Foundation
import UIKit

struct Style {
    struct button {
        static let cornerRadius: CGFloat = 8
    }
    
    struct shadow {
        static let shadowRadius: CGFloat = 2.0
        static let shadowOffset: CGSize = CGSize(width: 1.0, height: 2.0)
        static let shadowColor: CGColor = UIColor.gray.cgColor
    }
}
