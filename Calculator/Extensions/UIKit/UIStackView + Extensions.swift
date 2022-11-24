//
//  UIStackView + Extensions.swift
//  Calculator
//
//  Created by Aleksandr.Grachev on 24.11.2022.
//

import UIKit

extension UIStackView {
    
    convenience init(subviews: [UIView]) {
        self.init(arrangedSubviews: subviews)
        self.axis = .horizontal
        self.spacing = 10
        self.distribution = .fillEqually
    }
}
