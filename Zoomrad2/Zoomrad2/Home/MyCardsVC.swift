//
//  MyCardsVC.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 05/07/24.
//

import UIKit

final class MyCardsVC: UIViewController {
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CardsVCCardCell.self, forCellReuseIdentifier: "cell")
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        return tableView
    }()
    
    private let addCardButtonView = MyCardsVCAddButtonView(
        bottomLabelText: "Karta qo'shish",
        ImageViewName: "creditcard"
    )
    
    override func viewDidLoad() {
        view.backgroundColor = .rgb(40, 47, 59)
        title = "Kartalarim"
        
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
//        setMyCardView()
        setAddCardButtonView()
    }
    
    @objc func addcardButtonTapped() {
        navigationController?.pushViewController(AddCardVC(), animated: true)
    }
}

extension MyCardsVC {
    
    
    func setAddCardButtonView() {
        view.addSubview(addCardButtonView)
        addCardButtonView.setConstraints(anchor: .bottom, from: view, 120)
        addCardButtonView.setConstraints(anchor: .left, from: view, 5)
        addCardButtonView.setConstraints(anchor: .height, from: view, 40)
        addCardButtonView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(addcardButtonTapped)))
    }
}

extension MyCardsVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Cards.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CardsVCCardCell else {return .init()}
        cell.backgroundColor = .rgb(102, 183, 144)
        cell.layer.cornerRadius = 17

        if let menuItem = Cards(rawValue: indexPath.row) {
            
            switch menuItem {
           
            case .card1:
                cell.prepare(cardTypeImageViewName: "humo_white",
                             bankNameLabelText: "ANOR BANK",
                             cardNumberLabelText: "9860 60** **** 1988",
                             balancelabelText: "74 522 so'm",
                             activeDateLabelText: "04/27")
                
            }
        }
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        let cellHeight: CGFloat = 130
            
            // Set the desired spacing between cells
            let interCellSpacing: CGFloat = 10
            
            // Return the sum of cell height and spacing
            return cellHeight + interCellSpacing
    }
}

enum Cards: Int, CaseIterable {
    case card1
}

