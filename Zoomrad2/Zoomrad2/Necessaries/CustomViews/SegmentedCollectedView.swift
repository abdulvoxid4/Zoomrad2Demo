//
//  SegmentedCollectedView.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 05/07/24.
//

import UIKit

class SegmentedCollectedView: UIControl {
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(SegmentedConCell.self, forCellReuseIdentifier: "cell")
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        return tableView
    }()
    
    
    
    init(
        scoresLabelText: String
    ) {
        super.init(frame: .zero)
        
        
        layer.backgroundColor = UIColor.clear.cgColor

        addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: topAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SegmentedCollectedView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? SegmentedConCell else {return .init()}
        cell.backgroundColor = .clear

        cell.imageView?.image = UIImage(systemName: "creditcard")
        cell.topLabel.text = "O'tkazma"
        cell.bottomLabel.text = "36 000 so'm"
        cell.rightLabel.text = "18.00"
       
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        let cellHeight: CGFloat = 50
            
            // Set the desired spacing between cells
            let interCellSpacing: CGFloat = 10
            
            // Return the sum of cell height and spacing
            return cellHeight + interCellSpacing
    }
}




