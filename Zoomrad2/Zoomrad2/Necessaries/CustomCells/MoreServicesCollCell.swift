//
//  MoreServicesCollCell.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 05/07/24.
//

import UIKit

final class MoreServicesCollCell: UICollectionViewCell {
    
    let bottomLabel = UILabel()
    let imageView = UIImageView()
   
    override init(frame: CGRect ) {
            super.init(frame: frame)
        
        contentView.addSubview(bottomLabel)
        contentView.addSubview(imageView)
        
        backgroundColor = .rgb(73, 83, 96)
        layer.cornerRadius = 15
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20).isActive = true
        imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 35).isActive = true
        imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -35).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        imageView.layer.cornerRadius = 20
        imageView.tintColor = .rgb(102, 183, 144)
        
        bottomLabel.translatesAutoresizingMaskIntoConstraints = false
        bottomLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        bottomLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
        bottomLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
        bottomLabel.font = .boldSystemFont(ofSize: 12)
        bottomLabel.textColor = .white
        bottomLabel.textAlignment = .center
        bottomLabel.numberOfLines = 2
    

    }
    
    func setData(model: MoreServicesModel) {
        imageView.image = UIImage(systemName: model.imageViewName)
        bottomLabel.text = model.bottomLabelText
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

struct MoreServicesModel {
    let imageViewName: String
    let bottomLabelText: String
}

