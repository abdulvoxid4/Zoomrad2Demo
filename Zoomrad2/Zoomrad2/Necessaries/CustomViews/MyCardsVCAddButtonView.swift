//
//  MyCardsVCAddButtonView.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 05/07/24.
//

import UIKit

class MyCardsVCAddButtonView: UIControl {
    
    let bottomLabel = UILabel()
    let imageView = UIImageView()
    
    init(
        bottomLabelText: String,
        ImageViewName: String
    ) {
        super.init(frame: .zero)
        
        bottomLabel.text = bottomLabelText
        imageView.image = UIImage(systemName: ImageViewName)
        
        addSubview(bottomLabel)
        addSubview(imageView)
        
        layer.backgroundColor = UIColor.clear.cgColor
    
        
        let containerView = UIView()
               containerView.backgroundColor = UIColor.rgb(73, 83, 96) // Set the desired background color
               containerView.layer.cornerRadius = 10 // Optional: add corner radius to the container view
               containerView.clipsToBounds = true
        
        addSubview(containerView)
        
        containerView.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 25).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 25).isActive = true
        imageView.tintColor = .rgb(102, 183, 144)
        imageView.contentMode = .scaleAspectFit
        
       
        containerView.translatesAutoresizingMaskIntoConstraints = false
               NSLayoutConstraint.activate([
                containerView.topAnchor.constraint(equalTo:  topAnchor, constant: 0),
                containerView.leadingAnchor.constraint(equalTo:  leadingAnchor, constant: 20),
                   containerView.widthAnchor.constraint(equalToConstant: 45),
                   containerView.heightAnchor.constraint(equalToConstant: 45)
               ])
        
        bottomLabel.translatesAutoresizingMaskIntoConstraints = false
        bottomLabel.topAnchor.constraint(equalTo:  topAnchor, constant: 15).isActive = true
        bottomLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 20).isActive = true
        bottomLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        bottomLabel.numberOfLines = 3
        bottomLabel.textColor = .white
        bottomLabel.font = .boldSystemFont(ofSize: 13)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

