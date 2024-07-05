//
//  PaymentVCCollViewCell.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 05/07/24.
//

import UIKit

final class PaymentVCCollViewCell: UICollectionViewCell {
    let imageView = UIImageView()
    let label = UILabel()
   
    override init(frame: CGRect ) {
            super.init(frame: frame)
        
        let containerView = UIView()
               containerView.backgroundColor = UIColor.rgb(73, 83, 96) // Set the desired background color
               containerView.layer.cornerRadius = 10 // Optional: add corner radius to the container view
               containerView.clipsToBounds = true // Ensure subviews are clipped to the rounded corners
        
        contentView.addSubview(imageView)
        contentView.addSubview(label)
        contentView.addSubview(containerView)
        
        backgroundColor = .clear
        layer.cornerRadius = 15
        
        
        containerView.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        imageView.leadingAnchor.constraint(equalTo:  contentView.leadingAnchor, constant: 30).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 25).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 25).isActive = true
        imageView.tintColor = .rgb(102, 183, 144)
        imageView.contentMode = .scaleAspectFit
        
       
        containerView.translatesAutoresizingMaskIntoConstraints = false
               NSLayoutConstraint.activate([
                containerView.topAnchor.constraint(equalTo:  contentView.topAnchor, constant: 0),
                containerView.leadingAnchor.constraint(equalTo:  contentView.leadingAnchor, constant: 20),
                   containerView.widthAnchor.constraint(equalToConstant: 45),
                   containerView.heightAnchor.constraint(equalToConstant: 45)
               ])
        
        addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo:  contentView.topAnchor, constant: 10).isActive = true
        label.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 20).isActive = true
        label.trailingAnchor.constraint(equalTo:  contentView.trailingAnchor, constant: -10).isActive = true
        //label.centerYAnchor.constraint(equalTo: containerView.centerYAnchor).isActive = true
        label.numberOfLines = 2
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 13)
        

    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}


