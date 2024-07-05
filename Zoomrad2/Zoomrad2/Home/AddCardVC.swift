//
//  AddCardVC.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 05/07/24.
//


import UIKit

final class AddCardVC: UIViewController, UITextFieldDelegate{
    
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: createLayout)
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.allowsSelection = true
        return collectionView
    }()
    
    var createLayout: UICollectionViewLayout {
        let layout = UICollectionViewCompositionalLayout { (
            sectionIndex : Int ,
            layoutEnvironment: NSCollectionLayoutEnvironment
        ) -> NSCollectionLayoutSection? in
            AddCardsTypes(rawValue: sectionIndex)?.layout
        }
        return layout
    }
    
    private let numberCardLabel = UILabel()
    private let cardNumberTextField = UITextField()
    private let cardDateLabel = UILabel()
    private let cardDateTextField = UITextField()
    private let cardNameLabel = UILabel()
    private let cardNameTextField = UITextField()
    private let makeCardMainLabel = UILabel()
    private let switcher = UISwitch()
    private let addCardButton = UIButton(type: .system)

    override func viewDidLoad() {
        view.backgroundColor = .bgColor
        title = "Karta qo'shish"
        
        view.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -550).isActive = true
        collectionView.backgroundColor = .clear
        
        activateFuncs()
        
        cardDateTextField.delegate = self
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField == cardDateTextField {
            let maxLength = 4
            let currentString: NSString = textField.text! as NSString
            let newString: NSString = currentString.replacingCharacters(in: range, with: string) as NSString
            return newString.length <= maxLength
            
        }
        return true
    }
    
}
extension AddCardVC {
    
    func activateFuncs() {
        setNumberCardLabel()
        setCardNumberTextField()
        setCardDateLabel()
        setCardDateTextField()
        setCardNameLabel()
        setCardNameTextField()
        setMakeCardMainLabel()
        setSwitcher()
        setAddCardButton()
    }
    
    func setNumberCardLabel() {
        view.addSubview(numberCardLabel)
        numberCardLabel.translatesAutoresizingMaskIntoConstraints = false
        numberCardLabel.topAnchor.constraint(equalTo: collectionView.bottomAnchor, constant: 20).isActive = true
        numberCardLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        numberCardLabel.text = "Karta raqami"
        numberCardLabel.textColor = .white
        numberCardLabel.font = .boldSystemFont(ofSize: 12)
    }
    
    func setCardNumberTextField() {
        view.addSubview(cardNumberTextField)
        cardNumberTextField.translatesAutoresizingMaskIntoConstraints = false
        cardNumberTextField.topAnchor.constraint(equalTo: numberCardLabel.bottomAnchor, constant: 10).isActive = true
        cardNumberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        cardNumberTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        cardNumberTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        cardNumberTextField.layer.cornerRadius = 13
        cardNumberTextField.backgroundColor = .rgb(73, 83, 96)
        
        cardNumberTextField.attributedPlaceholder = NSAttributedString(
            string: "Karta raqami",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.rgb(169, 176, 184).self]
        )
        let leftView = UILabel()
        leftView.text = "  "
        leftView.textColor = .white
        cardNumberTextField.leftView = leftView
        cardNumberTextField.leftViewMode = .always
        cardNumberTextField.textColor = .white
        cardNumberTextField.font = .boldSystemFont(ofSize: 18)
        cardNumberTextField.keyboardType = .numberPad
    }
    
    func setCardDateLabel() {
        view.addSubview(cardDateLabel)
        cardDateLabel.translatesAutoresizingMaskIntoConstraints = false
        cardDateLabel.topAnchor.constraint(equalTo: cardNumberTextField.bottomAnchor, constant: 20).isActive = true
        cardDateLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        cardDateLabel.text = "Tugash sanasi"
        cardDateLabel.textColor = .white
        cardDateLabel.font = .boldSystemFont(ofSize: 12)
    }
    
    func setCardDateTextField() {
        view.addSubview(cardDateTextField)
        cardDateTextField.translatesAutoresizingMaskIntoConstraints = false
        cardDateTextField.topAnchor.constraint(equalTo: cardDateLabel.bottomAnchor, constant: 10).isActive = true
        cardDateTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        cardDateTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -280).isActive = true
        cardDateTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        cardDateTextField.layer.cornerRadius = 13
        cardDateTextField.backgroundColor = .rgb(73, 83, 96)
        
        cardDateTextField.attributedPlaceholder = NSAttributedString(
            string: "OO / YY",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.rgb(169, 176, 184).self]
        )
        cardDateTextField.textColor = .white
        cardDateTextField.font = .boldSystemFont(ofSize: 18)
        cardDateTextField.keyboardType = .numberPad
        cardDateTextField.textAlignment = .center
    }
    
    func setCardNameLabel() {
        view.addSubview(cardNameLabel)
        cardNameLabel.translatesAutoresizingMaskIntoConstraints = false
        cardNameLabel.topAnchor.constraint(equalTo: cardNumberTextField.bottomAnchor, constant: 20).isActive = true
        cardNameLabel.leadingAnchor.constraint(equalTo: cardDateLabel.trailingAnchor, constant: 30).isActive = true
        cardNameLabel.text = "Karta nomi"
        cardNameLabel.textColor = .white
        cardNameLabel.font = .boldSystemFont(ofSize: 12)
    }
    
    func setCardNameTextField() {
        view.addSubview(cardNameTextField)
        cardNameTextField.translatesAutoresizingMaskIntoConstraints = false
        cardNameTextField.topAnchor.constraint(equalTo: cardNameLabel.bottomAnchor, constant: 10).isActive = true
        cardNameTextField.leadingAnchor.constraint(equalTo: cardDateTextField.trailingAnchor, constant: 20).isActive = true
        cardNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        cardNameTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        cardNameTextField.layer.cornerRadius = 13
        cardNameTextField.backgroundColor = .rgb(73, 83, 96)
        
        cardNameTextField.attributedPlaceholder = NSAttributedString(
            string: "Karta nomi",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.rgb(169, 176, 184).self]
        )
        let leftView = UILabel()
        leftView.text = "  "
        leftView.textColor = .white
        cardNameTextField.leftView = leftView
        cardNameTextField.leftViewMode = .always
        cardNameTextField.textColor = .white
        cardNameTextField.font = .boldSystemFont(ofSize: 18)
    }
    
    func setMakeCardMainLabel() {
        view.addSubview(makeCardMainLabel)
        makeCardMainLabel.translatesAutoresizingMaskIntoConstraints = false
        makeCardMainLabel.topAnchor.constraint(equalTo: cardDateTextField.bottomAnchor, constant: 28).isActive = true
        makeCardMainLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        makeCardMainLabel.text = "Asosiy qilish"
        makeCardMainLabel.textColor = .white
        makeCardMainLabel.font = .boldSystemFont(ofSize: 17)
    }
    
    func setSwitcher() {
        view.addSubview(switcher)
        switcher.translatesAutoresizingMaskIntoConstraints = false
        switcher.topAnchor.constraint(equalTo: cardNameTextField.bottomAnchor, constant: 20).isActive = true
        switcher.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        switcher.isOn = false
    }
    
    func setAddCardButton() {
        view.addSubview(addCardButton)
        addCardButton.translatesAutoresizingMaskIntoConstraints = false
        addCardButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -90).isActive = true
        addCardButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        addCardButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        addCardButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        addCardButton.setTitle("Karta qo'shish", for: .normal)
        addCardButton.backgroundColor = .rgb(67, 72, 79)
        addCardButton.setTitleColor(UIColor.white, for: .normal)
        addCardButton.layer.cornerRadius = 13
        addCardButton.titleLabel?.font = .boldSystemFont(ofSize: 14)
    }
    
}

extension AddCardVC: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        CardTypes.allCases.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
      
        cell.layer.cornerRadius = 10
        
        if indexPath.row == 0 {
            cell.backgroundColor = .green
        } else if indexPath.row == 1 {
            cell.backgroundColor = .yellow
        } else if indexPath.row == 2 {
            cell.backgroundColor = .white
        } else if indexPath.row == 3 {
            cell.backgroundColor = .blue
        } else if indexPath.row == 4 {
            cell.backgroundColor = .orange
        } else if indexPath.row == 5 {
            cell.backgroundColor = .purple
        }
        
        return cell
    }
    
    
}

