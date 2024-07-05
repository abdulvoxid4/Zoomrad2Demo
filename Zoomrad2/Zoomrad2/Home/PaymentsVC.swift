//
//  PaymentsVC.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 04/07/24.
//

import UIKit

class PaymentsVC : UIViewController {
    
    private let bellButton = UIButton(type: .system)
    
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: createLayout)
        collectionView.register(PaymentVCCollViewCell.self, forCellWithReuseIdentifier: "cell")
        return collectionView
    }()
    
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        view.backgroundColor = .rgb(40, 47, 59)
        title = "To'lovlar"
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        
        let standardAppearance = UINavigationBarAppearance()
        standardAppearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
            standardAppearance.configureWithOpaqueBackground()
            standardAppearance.backgroundColor = UIColor.rgb(40, 47, 59)
            self.navigationController?.navigationBar.standardAppearance = standardAppearance
            self.navigationController?.navigationBar.scrollEdgeAppearance = standardAppearance
        
        
        collectionView.delegate = self
        collectionView.dataSource = self
        view.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        collectionView.backgroundColor = .rgb(40, 47, 59)
        
        setBellButton()
        
    }
    
}

extension PaymentsVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        PaymentsVCSectionType.allCases.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        PaymentsVCCollViewItems.allCases.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.section == 0 {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? PaymentVCCollViewCell else { return .init() }
            
            if let itemsSectionZero = PaymentsVCCollViewItems(rawValue: indexPath.row) {
                
                switch itemsSectionZero {
                    
                case .mobileOperators:
                    cell.imageView.image = UIImage(systemName: "iphone.gen1")
                    cell.label.text = "Mobil operatorlar"
                case .homePhone:
                    cell.imageView.image = UIImage(systemName: "teletype.answer")
                    cell.label.text = "Uy telefoni"
                case .transport:
                    cell.imageView.image = UIImage(systemName: "car")
                    cell.label.text = "Transport"
                case .credits:
                    cell.imageView.image = UIImage(systemName: "creditcard")
                    cell.label.text = "Kreditlarni so'ndirish"
                case .donate:
                    cell.imageView.image = UIImage(systemName: "giftcard.fill")
                    cell.label.text = "Xayriya"
                case .ads:
                    cell.imageView.image = UIImage(systemName: "text.alignright")
                    cell.label.text = "E'lonlar va reklama"
                case .onlineServices:
                    cell.imageView.image = UIImage(systemName: "rectangle.inset.filled.and.person.filled")
                    cell.label.text = "Onlayn xizmatlar"
                case .electronWallets:
                    cell.imageView.image = UIImage(systemName: "bag.circle")
                    cell.label.text = "Elektron hamyonlar"
                case .hostingProviders:
                    cell.imageView.image = UIImage(systemName: "server.rack")
                    cell.label.text = "Hosting provayderlar"
                case .internetProviders:
                    cell.imageView.image = UIImage(systemName: "globe")
                    cell.label.text = "Internet provayderlar"
                case .communalServices:
                    cell.imageView.image = UIImage(systemName: "house")
                    cell.label.text = "Kommunal xizmatlar"
                case .tv:
                    cell.imageView.image = UIImage(systemName: "tv")
                    cell.label.text = "Televidenie va onlayn uzatuv"
                case .stateServices:
                    cell.imageView.image = UIImage(systemName: "house.and.flag")
                    cell.label.text =  "Davlat xizmatlar"
                case .internetMagazines:
                    cell.imageView.image = UIImage(systemName: "cart")
                    cell.label.text = "Internat do'konlar"
                case .services:
                    cell.imageView.image = UIImage(systemName: "list.bullet.clipboard")
                    cell.label.text = "Xizmatlar"
                case .education:
                    cell.imageView.image = UIImage(systemName: "book")
                    cell.label.text = "Ta'lim"
                case .games:
                    cell.imageView.image = UIImage(systemName: "gamecontroller")
                    cell.label.text = "O'yinlar va ijtimoiy tarmoqlar"
                case .commonFood:
                    cell.imageView.image = UIImage(systemName: "fork.knife.circle")
                    cell.label.text =  "Umumiy ovqatlanish"
                }
            }
                return cell
            }
        
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
    }
    
}

extension PaymentsVC {
    var createLayout: UICollectionViewLayout {
        let layout = UICollectionViewCompositionalLayout { (
            sectionIndex: Int,
            layoutEnvironment: NSCollectionLayoutEnvironment
        ) -> NSCollectionLayoutSection? in
            PaymentsVCSectionType(rawValue: sectionIndex)?.layout
        }
        return layout
    }
}

extension PaymentsVC {
    func setBellButton() {
        view.addSubview(bellButton)
        bellButton.translatesAutoresizingMaskIntoConstraints = false
        bellButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 70).isActive = true
        bellButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        bellButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
        bellButton.widthAnchor.constraint(equalToConstant: 25).isActive = true
        bellButton.setImage(UIImage(systemName: "bell.fill"), for: .normal)
        bellButton.tintColor = .rgb(84, 172, 127)
        
        let bellBarButtonItem = UIBarButtonItem(customView: bellButton)
        self.navigationItem.rightBarButtonItem = bellBarButtonItem
        navigationItem.rightBarButtonItem = bellBarButtonItem
    }
}



