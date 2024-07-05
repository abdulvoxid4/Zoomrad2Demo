//
//  SegmentedConUsedView.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 05/07/24.
//

import UIKit

final class SegmentedConUsedView: UIControl {
    
    let mainLabel = UILabel()
    
    init(
        mainLabelText: String
    ) {
        super.init(frame: .zero)
        
        mainLabel.text = mainLabelText
       
        addSubview(mainLabel)
        
        layer.backgroundColor = UIColor.clear.cgColor
        
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        mainLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        mainLabel.textColor = .white
        mainLabel.font = .boldSystemFont(ofSize: 16)
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

