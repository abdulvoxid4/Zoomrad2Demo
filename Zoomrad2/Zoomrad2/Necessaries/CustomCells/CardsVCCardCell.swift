//
//  CardsVCCardCell.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 05/07/24.
//

import UIKit

class CardsVCCardCell: UITableViewCell {
    
    let cardTypeImageView = UIImageView()
    let bankNameLabel = UILabel()
    let cardNumberLabel = UILabel()
    let balancelabel = UILabel()
    let activeDateLabel = UILabel()
   
   override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
       super.init(style: style, reuseIdentifier: reuseIdentifier)
   
       addSubview(cardTypeImageView)
       addSubview(bankNameLabel)
       addSubview(cardNumberLabel)
       addSubview(balancelabel)
       addSubview(activeDateLabel)
       
       cardTypeImageView.translatesAutoresizingMaskIntoConstraints = false
       cardTypeImageView.topAnchor.constraint(equalTo: topAnchor, constant: 15).isActive = true
       cardTypeImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
       cardTypeImageView.heightAnchor.constraint(equalToConstant: 35).isActive = true
       cardTypeImageView.widthAnchor.constraint(equalToConstant: 35).isActive = true

       bankNameLabel.translatesAutoresizingMaskIntoConstraints = false
       bankNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 23).isActive = true
       bankNameLabel.leadingAnchor.constraint(equalTo: cardTypeImageView.trailingAnchor, constant: 15).isActive = true
       bankNameLabel.textColor = .white
       bankNameLabel.font = .systemFont(ofSize: 14)
       
       cardNumberLabel.translatesAutoresizingMaskIntoConstraints = false
       cardNumberLabel.topAnchor.constraint(equalTo: cardTypeImageView.bottomAnchor, constant: 20).isActive = true
       cardNumberLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
       cardNumberLabel.textColor = .white
       cardNumberLabel.font = .systemFont(ofSize: 14)
       
       balancelabel.translatesAutoresizingMaskIntoConstraints = false
       balancelabel.topAnchor.constraint(equalTo: cardNumberLabel.bottomAnchor, constant: 20).isActive = true
       balancelabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
       balancelabel.textColor = .white
       balancelabel.font = .boldSystemFont(ofSize: 20)
       
       activeDateLabel.translatesAutoresizingMaskIntoConstraints = false
       activeDateLabel.topAnchor.constraint(equalTo: cardNumberLabel.bottomAnchor, constant: 25).isActive = true
       activeDateLabel.leadingAnchor.constraint(equalTo: balancelabel.trailingAnchor, constant: 40).isActive = true
       activeDateLabel.textColor = .white
       activeDateLabel.font = .boldSystemFont(ofSize: 14)

   }
    
   required init?(coder: NSCoder) {
       super.init(coder: coder)
       selectionStyle = .none
   }

    func prepare(cardTypeImageViewName: String,
                 bankNameLabelText: String,
                 cardNumberLabelText: String,
                 balancelabelText: String,
                 activeDateLabelText: String
                ) {
        cardTypeImageView.image = UIImage(named: cardTypeImageViewName)
        bankNameLabel.text = bankNameLabelText
        cardNumberLabel.text = cardNumberLabelText
        balancelabel.text = balancelabelText
        activeDateLabel.text = activeDateLabelText
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
            // Override without calling super to prevent default selection behavior
        }
        
    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
            // Override without calling super to prevent default highlight behavior
        }
}

