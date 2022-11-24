//
//  CalculatorButton.swift
//  Calculator
//
//  Created by Aleksandr.Grachev on 24.11.2022.
//

import UIKit

class CalculatorButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not implemented")
    }
    
    convenience init(title: String, tag: Int, color: UIColor) {
        self.init(type: .system)
        self.setTitle(title, for: .normal)
        self.tag = tag
        self.backgroundColor = color
        self.tintColor = .white
        self.titleLabel?.font = .boldSystemFont(ofSize: 22)
        self.layer.cornerRadius = 46
        self.addTarget(self, action: #selector(keyboardButtonTapped), for: .touchUpInside)
    }
    
    @objc private func keyboardButtonTapped(sender: UIButton) {
        print(sender.tag)
    }
}
