//
//  MainStackView.swift
//  Calculator
//
//  Created by Aleksandr.Grachev on 24.11.2022.
//

import UIKit

class MainStackView: UIStackView {
    
    private var stackViewsArray = [UIStackView]()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupMainStackView()
        configure()
        stackViewsArray.forEach { addArrangedSubview($0)}
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not implemented")
    }
    
    private func configure(){
        axis = .vertical
        spacing = 10
        distribution = .fillEqually
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setupMainStackView() {
        let button0 = CalculatorButton(title: "0", tag: 0, color: .darkGray)
        let buttonPoint = CalculatorButton(title: ",", tag: 10, color: .darkGray)
        let buttonEqual = CalculatorButton(title: "=", tag: 11, color: .orange)
        let fifthStackView = UIStackView(subviews: [button0, buttonPoint, buttonEqual])
        button0.widthAnchor.constraint(equalTo: fifthStackView.widthAnchor, multiplier: 0.5).isActive = true
        buttonPoint.widthAnchor.constraint(equalTo: buttonEqual.widthAnchor, multiplier: 1).isActive = true
        fifthStackView.distribution = .fill
        
        let button1 = CalculatorButton(title: "1", tag: 1, color: .darkGray)
        let button2 = CalculatorButton(title: "2", tag: 2, color: .darkGray)
        let button3 = CalculatorButton(title: "3", tag: 3, color: .darkGray)
        let buttonPlus = CalculatorButton(title: "+", tag: 12, color: .orange)
        let fourthStackView = UIStackView(subviews: [button1, button2, button3, buttonPlus])
        
        let button4 = CalculatorButton(title: "4", tag: 4, color: .darkGray)
        let button5 = CalculatorButton(title: "5", tag: 5, color: .darkGray)
        let button6 = CalculatorButton(title: "6", tag: 6, color: .darkGray)
        let buttonMinus = CalculatorButton(title: "-", tag: 13, color: .orange)
        let thirdStackView = UIStackView(subviews: [button4, button5, button6, buttonMinus])
        
        let button7 = CalculatorButton(title: "7", tag: 7, color: .darkGray)
        let button8 = CalculatorButton(title: "8", tag: 8, color: .darkGray)
        let button9 = CalculatorButton(title: "9", tag: 9, color: .darkGray)
        let buttonMulty = CalculatorButton(title: "×", tag: 14, color: .orange)
        let seccondStackView = UIStackView(subviews: [button7, button8, button9, buttonMulty])
        
        let buttonAC = CalculatorButton(title: "AC", tag: 18, color: .lightGray)
        let buttonPusMinus = CalculatorButton(title: "+/-", tag: 17, color: .lightGray)
        let buttonPercent = CalculatorButton(title: "%", tag: 16, color: .lightGray)
        let buttonDevide = CalculatorButton(title: "÷", tag: 15, color: .orange)
        let firstStackView = UIStackView(subviews: [buttonAC, buttonPusMinus, buttonPercent, buttonDevide])
        
        stackViewsArray = [firstStackView, seccondStackView, thirdStackView, fourthStackView, fifthStackView]
    }
}
