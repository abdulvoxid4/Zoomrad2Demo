//
//  SegmentedConCell.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 05/07/24.
//

import UIKit

class SegmentedConCell: UITableViewCell {
    
     let tableImageView = UIImageView()
     let topLabel = UILabel()
     let bottomLabel = UILabel()
     let rightLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
       
        layer.backgroundColor = UIColor.clear.cgColor
       
        addSubview(tableImageView)
        tableImageView.translatesAutoresizingMaskIntoConstraints = false
        tableImageView.topAnchor.constraint(equalTo: topAnchor, constant: 15).isActive = true
        tableImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        tableImageView.widthAnchor.constraint(equalToConstant: 10).isActive = true
        tableImageView.heightAnchor.constraint(equalToConstant: 10).isActive = true
        tableImageView.tintColor = .red
        
        addSubview(topLabel)
        topLabel.translatesAutoresizingMaskIntoConstraints = false
        topLabel.topAnchor.constraint(equalTo: topAnchor, constant: 5).isActive = true
        topLabel.leadingAnchor.constraint(equalTo: tableImageView.trailingAnchor, constant: 30).isActive = true
        topLabel.textColor = .white
        topLabel.font = .boldSystemFont(ofSize: 15)

        addSubview(bottomLabel)
        bottomLabel.translatesAutoresizingMaskIntoConstraints = false
        bottomLabel.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 10).isActive = true
        bottomLabel.leadingAnchor.constraint(equalTo: tableImageView.trailingAnchor, constant: 30).isActive = true
        bottomLabel.textColor = .white
        
        addSubview(rightLabel)
        rightLabel.translatesAutoresizingMaskIntoConstraints = false
        rightLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        rightLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25).isActive = true
        rightLabel.font = .boldSystemFont(ofSize: 18)
        rightLabel.textColor = .appColor
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
