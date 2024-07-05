//
//  HomeVC.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 04/07/24.
//

import UIKit

class HomeVC: UIViewController {
    
    let sideMenuButton = UIButton(type: .system)
    let bellButton = UIButton(type: .system)
    let mainCard = HomeCardView(
        totalSumLabelText: "Umumiy balans",
        hideSumButtonName: "eye.slash",
        balancelabelText: "74 522 so`m",
        moveCardsButtonName: "chevron.right",
        moveCardsLabelText: "Kartalarga o`tish",
        updateButtonName: "arrow.circlepath"
    )
    
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: createLayout)
        collectionView.register(HomeSectionZeroCell.self, forCellWithReuseIdentifier: "cell0")
        collectionView.register(HomeSectionFirstCell.self, forCellWithReuseIdentifier: "cell1")
        collectionView.register(HomeSectionSecondCell.self, forCellWithReuseIdentifier: "cell2")
        collectionView.register(HomeSectionThirdCell.self, forCellWithReuseIdentifier: "cell3")
        collectionView.allowsSelection = true
        return collectionView
    }()
    
    let refresher = UIRefreshControl()
    
    var createLayout: UICollectionViewLayout {
        let layout = UICollectionViewCompositionalLayout { (
            sectionIndex : Int ,
            layoutEnvironment: NSCollectionLayoutEnvironment
        ) -> NSCollectionLayoutSection? in
            HomeSectionType(rawValue: sectionIndex)?.layout
        }
        return layout
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    
    override func viewDidLoad() {
        view.backgroundColor = .rgb(40, 47, 59)
        
        let standardAppearance = UINavigationBarAppearance()
        standardAppearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        standardAppearance.configureWithOpaqueBackground()
        standardAppearance.backgroundColor = UIColor.rgb(40, 47, 59)
        navigationController?.navigationBar.standardAppearance = standardAppearance
        navigationController?.navigationBar.scrollEdgeAppearance = standardAppearance
        
        view.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 290).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .rgb(40, 47, 59)
        
        collectionView.register(
            HomeMyHeaderView.self,
            forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: HomeMyHeaderView.reuseIdentifier
        )
        
        setSideMenuButton(navigationItem: navigationItem)
        setBellButton(navigationItem: navigationItem)
        
        mainCard.moveCardsButton.addTarget(target, action: #selector(HomeVC.moveCardsButtonPressed), for: .touchUpInside)
        
        setMainCard()
    }
    
    @objc func moveCardsButtonPressed() {
        navigationController?.pushViewController(MyCardsVC(), animated: true)
    }
    
}

extension HomeVC: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        HomeSectionType.allCases.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let sectionType = HomeSectionType(rawValue: section) else { return 0 }
        
        switch sectionType {
        case .fourButtons: return HomeFourButtonsType.allCases.count
        case .Suggestions: return HomeSuggestionsType.allCases.count
        case .fastPayments: return HomeFastPaymentsType.allCases.count
        case .currencies: return HomeCurrenciesType.allCases.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let sectionType = HomeSectionType(rawValue: indexPath.section) else { return .init() }
        
        if indexPath.section == 0 {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell0", for: indexPath) as? HomeSectionZeroCell else { return .init() }
            
            if let itemsSectionZero = HomeFourButtonsType(rawValue: indexPath.row){
                switch itemsSectionZero {
                    
                case .cashback:
                    cell.typeOfCellLabel.text = "Keshbek"
                    cell.amountLabel.text = "506.5"
                    cell.bottomLabel.text = "ball"
                case .fund:
                    cell.typeOfCellLabel.text = "Jamg'arma"
                    cell.amountLabel.text = "0"
                    cell.bottomLabel.text = "so'm"
                case .deposits:
                    cell.typeOfCellLabel.text = "Omonatlar"
                    cell.amountLabel.text = "0"
                    cell.bottomLabel.text = "so'm"
                case .credits:
                    cell.typeOfCellLabel.text = "Kreditlar"
                    cell.amountLabel.text = "0"
                    cell.bottomLabel.text = "so'm"
                }
             
            }
            
            return cell
            
        } else if indexPath.section == 1 {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as? HomeSectionFirstCell else {return .init()}
            
            if let itemsSectionFirst = HomeSuggestionsType(rawValue: indexPath.row) {
                switch itemsSectionFirst {
                    
                case .hajPayment:
                    cell.bottomLabel.text = "Haj to`lovi"
                case .individualDesign:
                    cell.bottomLabel.text = "Individual dizayn"
                case .visa:
                    cell.bottomLabel.text = "VISA Direct"
                case .umraPayment:
                    cell.bottomLabel.text = "Umra to'lovi"
                case .avtoInsurance:
                    cell.bottomLabel.text = "Sug'urta rasmiylashtiring"
                case .investment:
                    cell.bottomLabel.text = "Investitsiya"
                case .sello:
                    cell.bottomLabel.text = "Sello Marketplace"
                case .takingDeposit:
                    cell.bottomLabel.text = "Omonat ochish"
                case .stateServices:
                    cell.bottomLabel.text = "Davlat xizmatlari onlayn"
                case .virtualCard:
                    cell.bottomLabel.text = "Virtual karta"
                case .myHome:
                    cell.bottomLabel.text = "Mening uyim"
                case .universityContract:
                    cell.bottomLabel.text = "OTM shartnoma to'lovi"
                case .myCar:
                    cell.bottomLabel.text = "Mening avtomobilim"
                case .conversion:
                    cell.bottomLabel.text = "Konversiya"
                }
            }
            
            return cell
            
        } else if indexPath.section == 2 {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as? HomeSectionSecondCell else { return .init()}
    
                if let itemsSectionSecond = HomeFastPaymentsType(rawValue: indexPath.row) {
                    switch itemsSectionSecond {
                        
                    case .add:
                        cell.imageView.image = UIImage(systemName: "plus")
                    }
                }
            
            
            return cell
            
        } else if indexPath.section == 3 {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as? HomeSectionThirdCell else { return .init()}
            
            if let itemsSectionThird = HomeCurrenciesType(rawValue: indexPath.row) {
                
                switch itemsSectionThird {
                case .usa:
                    cell.imageView.image = UIImage(named: "usa")
                    cell.firstBottom.text = "USD"
                    cell.secondBottom.text = "12 675"
                    cell.thirdBottom.text = "12 715"
                case .euro:
                    cell.imageView.image = UIImage(named: "europe")
                    cell.firstBottom.text = "EUR"
                    cell.secondBottom.text = "13 000"
                    cell.thirdBottom.text = "14 000"
                case .japan:
                    cell.imageView.image = UIImage(named: "japan")
                    cell.firstBottom.text = "JPY"
                    cell.secondBottom.text = "  75"
                    cell.thirdBottom.text = "  95"
                case .swissFranc:
                    cell.imageView.image = UIImage(named: "switzerland")
                    cell.firstBottom.text = "CHF"
                    cell.secondBottom.text = "13 400"
                    cell.thirdBottom.text = "14 400"
                case .uk:
                    cell.imageView.image = UIImage(named: "greatBritain")
                    cell.firstBottom.text = "GBP"
                    cell.secondBottom.text = "15 500"
                    cell.thirdBottom.text = "16 500"
                }
            }
            return cell
        }
        return .init()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                navigationController?.pushViewController(CashbackVC(), animated: true)
            }
        }


    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader {
            guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HomeMyHeaderView.reuseIdentifier, for: indexPath) as? HomeMyHeaderView else {
                fatalError("Cannot create new header")
            }
            if  indexPath.section == 1 {
                header.label.text = "Talkiflar"
            } else if  indexPath.section == 2 {
                header.label.text = "Tezkor to`lovlar"
            } else if indexPath.section == 3 {
                header.label.text = "Valyuta kursi"
            }
            return header
            
        } else {
            fatalError("Unexpected element kind")
        }
    }
}


extension HomeVC {
    
    func setSideMenuButton(navigationItem: UINavigationItem) {
        view.addSubview(sideMenuButton)
        sideMenuButton.translatesAutoresizingMaskIntoConstraints = false
//        sideMenuButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
//        sideMenuButton.widthAnchor.constraint(equalToConstant: 25).isActive = true
        sideMenuButton.setImage(UIImage(systemName: "line.3.horizontal"), for: .normal)
        sideMenuButton.tintColor = .rgb(84, 172, 127)
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: sideMenuButton)
    }
    
    func setBellButton(navigationItem: UINavigationItem) {
        view.addSubview(bellButton)
        bellButton.translatesAutoresizingMaskIntoConstraints = false
//        bellButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
//        bellButton.widthAnchor.constraint(equalToConstant: 25).isActive = true
        bellButton.setImage(UIImage(systemName: "bell.fill"), for: .normal)
        bellButton.tintColor = .rgb(84, 172, 127)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: bellButton)
    }
    
    func setMainCard() {
        view.addSubview(mainCard)
        mainCard.translatesAutoresizingMaskIntoConstraints = false
        mainCard.topAnchor.constraint(equalTo: view.topAnchor, constant: 120).isActive = true
        mainCard.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        mainCard.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        mainCard.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
    }
    
}
