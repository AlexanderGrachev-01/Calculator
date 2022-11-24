//
//  MainViewController.swift
//  Calculator
//
//  Created by Aleksandr.Grachev on 24.11.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    private let calculationLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.font = .systemFont(ofSize: 100)
        label.textColor = .white
        label.textAlignment = .right
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.3
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let mainStackView = MainStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstreints()
    }
    
    private func setupViews() {
        view.backgroundColor = .black
        
        view.addSubview(calculationLabel)
        view.addSubview(mainStackView)
    }
}

extension MainViewController {
    
    private func setConstreints() {
        NSLayoutConstraint.activate([
            mainStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            mainStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            mainStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            mainStackView.heightAnchor.constraint(equalTo: mainStackView.widthAnchor, multiplier: 1.25),
            
            calculationLabel.bottomAnchor.constraint(equalTo: mainStackView.topAnchor, constant: -10),
            calculationLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            calculationLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
        ])
    }
}

