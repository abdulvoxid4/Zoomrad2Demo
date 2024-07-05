//
//  HomeCardView.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 05/07/24.
//

import UIKit

protocol HomeCardViewDelegate: AnyObject {
    func moveToCardsPressed()
    func refreshButtonPressedd()
    func hideShowPressd(_ value: Bool)
}

class HomeCardView: UIControl {
    
     let totalSumLabel = UILabel()
     let hideSumButton = UIButton(type: .system)
     let balancelabel = UILabel()
     let moveCardsButton = UIButton(type: .system)
     let moveCardsLabel = UILabel()
     let updateButton = UIButton(type: .system)
    
    weak var delegate: HomeCardViewDelegate?
    
    init(
        totalSumLabelText: String,
        hideSumButtonName: String,
        balancelabelText: String,
        moveCardsButtonName: String,
        moveCardsLabelText: String,
        updateButtonName: String
    ) {
        super.init(frame: .zero)
        
        totalSumLabel.text = totalSumLabelText
        hideSumButton.setImage(UIImage(systemName: hideSumButtonName), for: .normal)
        balancelabel.text = balancelabelText
        moveCardsButton.setImage(UIImage(systemName: moveCardsButtonName), for: .normal)
        moveCardsLabel.text = moveCardsLabelText
        updateButton.setImage(UIImage(systemName: updateButtonName), for: .normal)
        
        addSubview(totalSumLabel)
        addSubview(hideSumButton)
        addSubview(balancelabel)
        addSubview(moveCardsButton)
        addSubview(moveCardsLabel)
        addSubview(updateButton)
        
        layer.backgroundColor = UIColor.rgb(102, 183, 144).cgColor
        layer.cornerRadius = 15
        
        totalSumLabel.translatesAutoresizingMaskIntoConstraints = false
        totalSumLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        totalSumLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        totalSumLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -100).isActive = true
        totalSumLabel.textColor = .white
        totalSumLabel.font = .systemFont(ofSize: 14)
        
        hideSumButton.translatesAutoresizingMaskIntoConstraints = false
        hideSumButton.topAnchor.constraint(equalTo: totalSumLabel.bottomAnchor, constant: 22).isActive = true
        hideSumButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        hideSumButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
        hideSumButton.widthAnchor.constraint(equalToConstant: 28).isActive = true
        hideSumButton.tintColor = .white
        hideSumButton.addTarget(self, action: #selector(hidePressed), for: .touchUpInside)
        
        balancelabel.translatesAutoresizingMaskIntoConstraints = false
        balancelabel.topAnchor.constraint(equalTo: totalSumLabel.bottomAnchor, constant: 17).isActive = true
        balancelabel.leadingAnchor.constraint(equalTo: hideSumButton.trailingAnchor, constant: 18).isActive = true
        balancelabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50).isActive = true
        balancelabel.textColor = .white
        balancelabel.font = .boldSystemFont(ofSize: 32)

        moveCardsButton.translatesAutoresizingMaskIntoConstraints = false
        moveCardsButton.topAnchor.constraint(equalTo: hideSumButton.bottomAnchor, constant: 20).isActive = true
        moveCardsButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30).isActive = true
        moveCardsButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
        moveCardsButton.widthAnchor.constraint(equalToConstant: 25).isActive = true
        moveCardsButton.tintColor = .rgb(102, 183, 144)
        moveCardsButton.layer.cornerRadius = 12
        moveCardsButton.backgroundColor = .white
        
        moveCardsLabel.translatesAutoresizingMaskIntoConstraints = false
        moveCardsLabel.topAnchor.constraint(equalTo: hideSumButton.bottomAnchor, constant: 24).isActive = true
        moveCardsLabel.leadingAnchor.constraint(equalTo: moveCardsButton.trailingAnchor, constant: 15).isActive = true
        moveCardsLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -80).isActive = true
        moveCardsLabel.textColor = .white
        moveCardsLabel.font = .systemFont(ofSize: 14)
        
        updateButton.translatesAutoresizingMaskIntoConstraints = false
        updateButton.topAnchor.constraint(equalTo: hideSumButton.bottomAnchor, constant: 18).isActive = true
        updateButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        updateButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
        updateButton.widthAnchor.constraint(equalToConstant: 25).isActive = true
        updateButton.tintColor = .white
        updateButton.addTarget(self, action: #selector(pullToRefresh), for: .touchUpInside)
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func moveToCardsPressed() {
        delegate?.moveToCardsPressed()
    }
    
    @objc private func hidePressed() {
        delegate?.hideShowPressd(false)
    }
    
    @objc func pullToRefresh() {
        delegate?.refreshButtonPressedd()
    }
}


extension UIColor {
    static var appColor = UIColor.rgb(102, 183, 144)
    static var bgColor = UIColor.rgb(40, 47, 59)
}

