//
//  CashbackVCView.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 05/07/24.
//

import UIKit

class CashbackVCView: UIControl {
    
    let mainLabel = UILabel()
    let scoresLabel = UILabel()
    let scoresBalanceLabel = UILabel()
    let backButton = UIButton(type: .system)

    
    init(
        mainLabelText: String,
        scoresLabelText: String,
        scoresBalanceLabelText: String,
        backButtonImageName: String
    ) {
        super.init(frame: .zero)
        
        mainLabel.text = mainLabelText
        scoresLabel.text = scoresLabelText
        scoresBalanceLabel.text = scoresBalanceLabelText
        backButton.setImage(UIImage(systemName: backButtonImageName), for: .normal)
        
        addSubview(mainLabel)
        addSubview(scoresLabel)
        addSubview(scoresBalanceLabel)
        addSubview(backButton)
        
        layer.backgroundColor = UIColor.rgb(102, 183, 144).cgColor
        layer.cornerRadius = 15
        
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        mainLabel.topAnchor.constraint(equalTo: topAnchor, constant: 65).isActive = true
        mainLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainLabel.textColor = .white
        mainLabel.font = .boldSystemFont(ofSize: 18)
        
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.topAnchor.constraint(equalTo: topAnchor, constant: 65).isActive = true
        backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
        backButton.widthAnchor.constraint(equalToConstant: 24).isActive = true
        backButton.imageView?.tintColor = .white

        scoresLabel.translatesAutoresizingMaskIntoConstraints = false
        scoresLabel.topAnchor.constraint(equalTo: topAnchor, constant: 105).isActive = true
        scoresLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        scoresLabel.textColor = .white
        scoresLabel.font = .systemFont(ofSize: 13)

        scoresBalanceLabel.translatesAutoresizingMaskIntoConstraints = false
        scoresBalanceLabel.topAnchor.constraint(equalTo:  scoresLabel.bottomAnchor, constant: 15).isActive = true
        scoresBalanceLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        scoresBalanceLabel.textColor = .white
        scoresBalanceLabel.font = .boldSystemFont(ofSize: 28)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}



