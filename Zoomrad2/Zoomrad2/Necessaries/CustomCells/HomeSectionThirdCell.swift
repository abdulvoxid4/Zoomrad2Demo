//
//  HomeSectionThirdCell.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 05/07/24.
//

import UIKit


final class HomeSectionThirdCell : UICollectionViewCell{
    
    let imageView = UIImageView()
    let firstTop = UILabel()
    let firstBottom = UILabel()
    let secondTop = UILabel()
    let secondBottom = UILabel()
    let thirdTop = UILabel()
    let thirdBottom = UILabel()
    
    override init(frame: CGRect ) {
            super.init(frame: frame)
        
        contentView.addSubview(imageView)
        contentView.addSubview(firstTop)
        contentView.addSubview(firstBottom)
        contentView.addSubview(secondTop)
        contentView.addSubview(secondBottom)
        contentView.addSubview(thirdTop)
        contentView.addSubview(thirdBottom)

        backgroundColor = .rgb(73, 83, 96)
        layer.cornerRadius = 15
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15).isActive = true
        imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 40).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        imageView.layer.cornerRadius = 20
        
        firstTop.translatesAutoresizingMaskIntoConstraints = false
        firstTop.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15).isActive = true
        firstTop.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 12).isActive = true
        firstTop.font = .boldSystemFont(ofSize: 10)
        firstTop.textColor = .white
        firstTop.text = "Pul birligi"
     
        firstBottom.translatesAutoresizingMaskIntoConstraints = false
        firstBottom.topAnchor.constraint(equalTo: firstTop.bottomAnchor, constant: 12).isActive = true
        firstBottom.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 20).isActive = true
        firstBottom.font = .boldSystemFont(ofSize: 12)
        firstBottom.textColor = .white
        
        secondTop.translatesAutoresizingMaskIntoConstraints = false
        secondTop.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15).isActive = true
        secondTop.leadingAnchor.constraint(equalTo: firstTop.trailingAnchor, constant: 15).isActive = true
        secondTop.font = .boldSystemFont(ofSize: 10)
        secondTop.textColor = .white
        secondTop.text = "Sotib olish"
        
        secondBottom.translatesAutoresizingMaskIntoConstraints = false
        secondBottom.topAnchor.constraint(equalTo: secondTop.bottomAnchor, constant: 12).isActive = true
        secondBottom.leadingAnchor.constraint(equalTo: firstBottom.trailingAnchor, constant: 35).isActive = true
        secondBottom.font = .boldSystemFont(ofSize: 12)
        secondBottom.textColor = .white
     
        thirdTop.translatesAutoresizingMaskIntoConstraints = false
        thirdTop.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15).isActive = true
        thirdTop.leadingAnchor.constraint(equalTo: secondTop.trailingAnchor, constant: 15).isActive = true
        thirdTop.font = .boldSystemFont(ofSize: 10)
        thirdTop.textColor = .white
        thirdTop.text = "Sotish"
        
        thirdBottom.translatesAutoresizingMaskIntoConstraints = false
        thirdBottom.topAnchor.constraint(equalTo: thirdTop.bottomAnchor, constant: 12).isActive = true
        thirdBottom.leadingAnchor.constraint(equalTo: secondBottom.trailingAnchor, constant: 20).isActive = true
        thirdBottom.font = .boldSystemFont(ofSize: 12)
        thirdBottom.textColor = .white
        

    }
    
    func setData(model: ThirdCellModel) {
        imageView.image = UIImage(named: model.image)
        firstBottom.text = model.first
        secondBottom.text = model.second
        thirdBottom.text = model.third
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


struct ThirdCellModel {
    let image: String
    let first: String
    let second: String
    let third: String
}

