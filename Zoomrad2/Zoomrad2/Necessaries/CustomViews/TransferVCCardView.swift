//
//  TransferVCCardView.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 05/07/24.
//

import UIKit

class TransferVCCardView: UIControl {
    
    let cardTypeImageView = UIImageView()
    let bankNameLabel = UILabel()
    let cardNumberLabel = UILabel()
    let balancelabel = UILabel()
    let moveCardsButton = UIButton(type: .system)
    
    init(
        cardTypeImageViewName: String,
        bankNameLabelText: String,
        cardNumberLabelText: String,
        balancelabelText: String,
        moveCardsButtonName: String
    ) {
        super.init(frame: .zero)
        
        cardTypeImageView.image = UIImage(named: cardTypeImageViewName)
        bankNameLabel.text = bankNameLabelText
        cardNumberLabel.text = cardNumberLabelText
        balancelabel.text = balancelabelText
        moveCardsButton.setImage(UIImage(systemName: moveCardsButtonName), for: .normal)
       
        addSubview(cardTypeImageView)
        addSubview(bankNameLabel)
        addSubview(cardNumberLabel)
        addSubview(balancelabel)
        addSubview(moveCardsButton)
        
        layer.backgroundColor = UIColor.rgb(102, 183, 144).cgColor
        layer.cornerRadius = 15
        
        cardTypeImageView.translatesAutoresizingMaskIntoConstraints = false
        cardTypeImageView.topAnchor.constraint(equalTo: topAnchor, constant: 3).isActive = true
        cardTypeImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        cardTypeImageView.heightAnchor.constraint(equalToConstant: 35).isActive = true
        cardTypeImageView.widthAnchor.constraint(equalToConstant: 35).isActive = true

        bankNameLabel.translatesAutoresizingMaskIntoConstraints = false
        bankNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        bankNameLabel.leadingAnchor.constraint(equalTo: cardTypeImageView.trailingAnchor, constant: 15).isActive = true
        bankNameLabel.textColor = .white
        bankNameLabel.font = .systemFont(ofSize: 14)
        
        cardNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        cardNumberLabel.topAnchor.constraint(equalTo: cardTypeImageView.bottomAnchor, constant: 20).isActive = true
        cardNumberLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        cardNumberLabel.textColor = .white
        cardNumberLabel.font = .systemFont(ofSize: 14)
        
        balancelabel.translatesAutoresizingMaskIntoConstraints = false
        balancelabel.topAnchor.constraint(equalTo: cardNumberLabel.bottomAnchor, constant: 10).isActive = true
        balancelabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
        balancelabel.textColor = .white
        balancelabel.font = .boldSystemFont(ofSize: 16)

        moveCardsButton.translatesAutoresizingMaskIntoConstraints = false
        moveCardsButton.topAnchor.constraint(equalTo: topAnchor, constant: 45).isActive = true
        moveCardsButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
        moveCardsButton.heightAnchor.constraint(equalToConstant: 22).isActive = true
        moveCardsButton.widthAnchor.constraint(equalToConstant: 22).isActive = true
        moveCardsButton.tintColor = .rgb(102, 183, 144)
        moveCardsButton.layer.cornerRadius = 12
        moveCardsButton.backgroundColor = .white
        
      

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}



