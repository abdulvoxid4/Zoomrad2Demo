//
//  MoreServicesVC.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 04/07/24.
//


import UIKit

class MoreServicesVC : UIViewController {
 
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: createLayout)
        collectionView.register(MoreServicesCollCell.self, forCellWithReuseIdentifier: "cell")
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
        title = "Ko'proq"
        
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
      
    }
}

extension MoreServicesVC {
    var createLayout: UICollectionViewLayout {
        let layout = UICollectionViewCompositionalLayout { (
            sectionIndex : Int ,
            layoutEnvironment: NSCollectionLayoutEnvironment
        ) -> NSCollectionLayoutSection? in
            MoreServicesSectionType(rawValue: sectionIndex)?.layout
        }
        return layout
    }
}

extension MoreServicesVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return MoreServicesSectionType.allCases.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        MoreServicesViewItems.allCases.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        if indexPath.section == 0 {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? MoreServicesCollCell else { return .init() }
            
            if let itemsSectionZero = MoreServicesViewItems(rawValue: indexPath.row) {
                switch itemsSectionZero {
                case .sello:
                    cell.imageView.image = UIImage(systemName: "cart")
                    cell.bottomLabel.text = "Onlayn do'kon Sello!"
                case .invest:
                    cell.imageView.image = UIImage(systemName: "leaf")
                    cell.bottomLabel.text = "Investitsiya"
                case .identification:
                    cell.imageView.image = UIImage(systemName: "key.viewfinder")
                    cell.bottomLabel.text = "Identifikatsiya"
                case .myCards:
                    cell.imageView.image = UIImage(systemName: "creditcard")
                    cell.bottomLabel.text = "Kartalarim"
                case .monitoring:
                    cell.imageView.image = UIImage(systemName: "clock.arrow.circlepath")
                    cell.bottomLabel.text = "Monitoring"
                case .payments:
                    cell.imageView.image = UIImage(systemName: "banknote")
                    cell.bottomLabel.text = "To'lovlar"
                case .transfer:
                    cell.imageView.image = UIImage(systemName: "arrow.left.arrow.right")
                    cell.bottomLabel.text = "O'tkazma"
                case .myHome:
                    cell.imageView.image = UIImage(systemName: "house")
                    cell.bottomLabel.text = "Mening uyim"
                case .myCar:
                    cell.imageView.image = UIImage(systemName: "car")
                    cell.bottomLabel.text = "Mening avtomobilim"
                case .visa:
                    cell.imageView.image = UIImage(systemName: "dollarsign.square")
                    cell.bottomLabel.text = "Visa Direct"
                case .onlineServices:
                    cell.imageView.image = UIImage(systemName: "house.and.flag")
                    cell.bottomLabel.text = "Onlayn davlat xizmatlari"
                case .requisitions:
                    cell.imageView.image = UIImage(systemName: "wallet.pass")
                    cell.bottomLabel.text = "Rekvizitlar bo'yicha to'lov"
                case .autoPay:
                    cell.imageView.image = UIImage(systemName: "clock.arrow.2.circlepath")
                    cell.bottomLabel.text = "Avtoto'lov"
                case .operationsStory:
                    cell.imageView.image = UIImage(systemName: "list.bullet.clipboard")
                    cell.bottomLabel.text = "Operatsiyalar tarixi"
                case .bookingCard:
                    cell.imageView.image = UIImage(systemName: "creditcard")
                    cell.bottomLabel.text = "Kartaga buyurtma"
                case .myAppilications:
                    cell.imageView.image = UIImage(systemName: "pencil.and.list.clipboard")
                    cell.bottomLabel.text = "Mening arizalarim"
                case .exchangeRate:
                    cell.imageView.image = UIImage(systemName: "eurosign.square")
                    cell.bottomLabel.text = "Kurslar"
                case .conversion:
                    cell.imageView.image = UIImage(systemName: "arrow.circlepath")
                    cell.bottomLabel.text = "Konversiya"
                case .moneyTransfers:
                    cell.imageView.image = UIImage(systemName: "iphone.and.arrow.left.and.arrow.right")
                    cell.bottomLabel.text = "Pul o'tkazmalari"
                case .settings:
                    cell.imageView.image = UIImage(systemName: "gearshape")
                    cell.bottomLabel.text = "Sozlamalar"
                }
            }
            return cell
        }
    return UICollectionViewCell()
    }
}
  


