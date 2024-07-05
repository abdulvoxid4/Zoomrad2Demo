//
//  HomeMyHeaderView.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 05/07/24.
//

import UIKit

class HomeMyHeaderView: UICollectionReusableView {
    static let reuseIdentifier = "MyHeaderView"

     let label: UILabel = {
        let label = UILabel()
        label.textColor = .white
         label.font = .systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }

    private func setupView() {
        addSubview(label)
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            label.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5)
        ])
    }

}
