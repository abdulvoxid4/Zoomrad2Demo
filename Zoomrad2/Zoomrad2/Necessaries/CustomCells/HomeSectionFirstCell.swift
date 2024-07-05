//
//  HomeSectionFirstCell.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 05/07/24.
//

import UIKit


final class HomeSectionFirstCell : UICollectionViewCell{
    
    let bottomLabel = UILabel()
    let imageView = UIImageView()
   
    override init(frame: CGRect ) {
            super.init(frame: frame)
        
        contentView.addSubview(bottomLabel)
        contentView.addSubview(imageView)
        
        backgroundColor = .rgb(102, 183, 144)
        layer.cornerRadius = 15
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        imageView.layer.cornerRadius = 20
        
        bottomLabel.translatesAutoresizingMaskIntoConstraints = false
        bottomLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        bottomLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
        bottomLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
        bottomLabel.font = .boldSystemFont(ofSize: 10)
        bottomLabel.textColor = .white
        bottomLabel.textAlignment = .center
        bottomLabel.numberOfLines = 2
    }
    
   func setData(model: FirstCellModel) {
        bottomLabel.text = model.bottomLabelText
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

struct FirstCellModel {
    let bottomLabelText: String
}
