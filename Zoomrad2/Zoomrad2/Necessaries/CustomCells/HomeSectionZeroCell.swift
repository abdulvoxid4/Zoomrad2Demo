//
//  HomeSectionZeroCell.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 05/07/24.
//

import UIKit

protocol HomeZeroCellDelegate: AnyObject {
    func didMorePressed(index: Int)
}

final class HomeSectionZeroCell : UICollectionViewCell{
    
    var imageView = UIImageView()
    var typeOfCellLabel = UILabel()
    var amountLabel = UILabel()
    var bottomLabel = UILabel()
    var moreButton = UIButton(type: .system)
    
    var index = 0
    weak var delegate: HomeZeroCellDelegate?
    
    override init(frame: CGRect ) {
        super.init(frame: frame)
        
        contentView.addSubview(imageView)
        contentView.addSubview(typeOfCellLabel)
        contentView.addSubview(amountLabel)
        contentView.addSubview(bottomLabel)
        contentView.addSubview(moreButton)
        
        backgroundColor = .rgb(73, 83, 96)
        layer.cornerRadius = 15
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 13).isActive = true
        imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 45).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 45).isActive = true
        imageView.backgroundColor = .rgb(84, 172, 127)
        imageView.tintColor = .white
        imageView.layer.cornerRadius = 10
        
        typeOfCellLabel.translatesAutoresizingMaskIntoConstraints = false
        typeOfCellLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        typeOfCellLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 10).isActive = true
        typeOfCellLabel.font = .boldSystemFont(ofSize: 11)
        typeOfCellLabel.textColor = .white
        
        amountLabel.translatesAutoresizingMaskIntoConstraints = false
        amountLabel.topAnchor.constraint(equalTo: typeOfCellLabel.bottomAnchor, constant: 5).isActive = true
        amountLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 10).isActive = true
        amountLabel.font = .boldSystemFont(ofSize: 15)
        amountLabel.textColor = .white
        
        bottomLabel.translatesAutoresizingMaskIntoConstraints = false
        bottomLabel.topAnchor.constraint(equalTo: amountLabel.bottomAnchor, constant: 5).isActive = true
        bottomLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 10).isActive = true
        bottomLabel.font = .systemFont(ofSize: 12)
        bottomLabel.textColor = .white
        
        moreButton.translatesAutoresizingMaskIntoConstraints = false
        moreButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        moreButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
        moreButton.widthAnchor.constraint(equalToConstant: 20).isActive = true
        moreButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
        moreButton.setImage(UIImage(named: "three-dots-vertical-svgrepo-com-3"), for: .normal)
        moreButton.tintColor = .rgb(84, 172, 127)
        //        moreButton.addTarget(nil, action: .init(("cellMorePressd")), for: .touchUpInside)
//        moreButton.addTarget(self, action: #selector(morePressed), for: .touchUpInside)
        
        func getIndex(index: Int) {
            self.index = index
        }

    }
    
    func setData(model: ZeroCellModel) {
        typeOfCellLabel.text = model.typeOfCellLabel
        amountLabel.text = model.amountLabel
        bottomLabel.text = model.bottomLabel
    }
    
    @objc func morePressed() {
        
        delegate?.didMorePressed(index: index)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

struct ZeroCellModel {
    let typeOfCellLabel: String
    let amountLabel: String
    let bottomLabel: String
}

