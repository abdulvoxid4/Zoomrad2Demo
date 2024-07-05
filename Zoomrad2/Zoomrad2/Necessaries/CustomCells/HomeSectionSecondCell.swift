//
//  HomeSectionSecondCell.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 05/07/24.
//

import UIKit


final class HomeSectionSecondCell : UICollectionViewCell{
    
    let imageView = UIImageView()
   
    override init(frame: CGRect ) {
            super.init(frame: frame)
        
        contentView.addSubview(imageView)
        
        backgroundColor = .rgb(73, 83, 96)
        layer.cornerRadius = 15
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 25).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 25).isActive = true
        imageView.tintColor = .gray

    }
    
    func setData(model: SecondCellModel) {
        imageView.image = UIImage(systemName: model.imageViewName)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

struct SecondCellModel {
    let imageViewName: String
}
