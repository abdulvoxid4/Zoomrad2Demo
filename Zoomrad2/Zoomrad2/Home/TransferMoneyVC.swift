//
//  TransferMoneyVC.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 04/07/24.
//

import UIKit

class TransferMoneyVC : UIViewController {
    
    private let cardNumberTextField = UITextField()
    private let paymentSumLabel = UILabel()
    private let sumOfTransferMoneyTextField = UITextField()
    private let minimumSumLabel = UILabel()
    private let transferingToMyCardView = TransferVCCustomView(
        bottomLabelText: "Mening kartamga o'tkazish",
        ImageViewName: "creditcard")
    private let selectRecieverView = TransferVCCustomView(
        bottomLabelText: "Qabul qiluvchini tanlash",
        ImageViewName: "person")
    
    private let myCardView = TransferVCCardView(
        cardTypeImageViewName: "humo_white",
        bankNameLabelText: "ANOR BANK HUMO",
        cardNumberLabelText: "9860 60** **** 1988",
        balancelabelText: "74 522 so'm",
        moveCardsButtonName: "chevron.right")
    
    private let continueButton = UIButton(type: .system)
    private let confirmationlabel = UILabel()
    
    override func viewDidLoad() {
        view.backgroundColor = .rgb(40, 47, 59)
        title = "O'tkazma"
        
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        
        let standardAppearance = UINavigationBarAppearance()
        standardAppearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
            standardAppearance.configureWithOpaqueBackground()
            standardAppearance.backgroundColor = UIColor.rgb(40, 47, 59)
            self.navigationController?.navigationBar.standardAppearance = standardAppearance
            self.navigationController?.navigationBar.scrollEdgeAppearance = standardAppearance
        
        
        setCardNumberTextField()
        setPaymentSumLabel()
        setSumOfTransferMoneyTextField()
        setMinimumSumLabel()
        setTransferingToMyCardView()
        setSelectRecieverView()
        setMyCardView()
        setContinueButton()
        setConfirmationlabel()
        
    }
    
   
  
}


extension TransferMoneyVC {
    func setCardNumberTextField() {
        view.addSubview(cardNumberTextField)
        cardNumberTextField.setConstraints(anchor: .top, from: view, 130)
        cardNumberTextField.setConstraints(anchor: .left, from: view, 20)
        cardNumberTextField.setConstraints(anchor: .right, from: view, 20)
        cardNumberTextField.setConstraints(anchor: .height, from: view, 52)
        cardNumberTextField.backgroundColor = .rgb(73, 83, 96)
        cardNumberTextField.layer.cornerRadius = 13
        cardNumberTextField.font = .systemFont(ofSize: 14)
        cardNumberTextField.attributedPlaceholder = NSAttributedString(
            string: "Qabul qiluvchining karta raqami",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.rgb(169, 176, 184).self]
        )
        let leftView = UILabel()
        leftView.text = "   "
        leftView.textColor = .white
        cardNumberTextField.leftView = leftView
        cardNumberTextField.leftViewMode = .always
        cardNumberTextField.textColor = .white
        cardNumberTextField.keyboardType = .numberPad
    }
    
    func setPaymentSumLabel() {
        view.addSubview(paymentSumLabel)
        paymentSumLabel.translatesAutoresizingMaskIntoConstraints = false
        paymentSumLabel.topAnchor.constraint(equalTo: cardNumberTextField.bottomAnchor, constant: 40).isActive = true
        paymentSumLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        paymentSumLabel.text = "O'tkazma summasi"
        paymentSumLabel.font = .boldSystemFont(ofSize: 14)
        paymentSumLabel.textColor = .white
    }
    
    func setSumOfTransferMoneyTextField() {
        view.addSubview(sumOfTransferMoneyTextField)
        sumOfTransferMoneyTextField.translatesAutoresizingMaskIntoConstraints = false
        sumOfTransferMoneyTextField.topAnchor.constraint(equalTo: paymentSumLabel.bottomAnchor, constant: 40).isActive = true
        sumOfTransferMoneyTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        sumOfTransferMoneyTextField.backgroundColor = .clear
        sumOfTransferMoneyTextField.font = .boldSystemFont(ofSize: 25)
        sumOfTransferMoneyTextField.textColor = .rgb(102, 183, 144)
        sumOfTransferMoneyTextField.attributedPlaceholder = NSAttributedString(
            string: "0 so'm",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.rgb(98, 104, 113).self]
        )
    }
    func setMinimumSumLabel() {
        view.addSubview(minimumSumLabel)
        minimumSumLabel.translatesAutoresizingMaskIntoConstraints = false
        minimumSumLabel.topAnchor.constraint(equalTo: sumOfTransferMoneyTextField.bottomAnchor, constant: 30).isActive = true
        minimumSumLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        minimumSumLabel.text = "Eng kam miqdori 5000 so'm"
        minimumSumLabel.font = .boldSystemFont(ofSize: 14)
        minimumSumLabel.textColor = .white
    }
    
    func setTransferingToMyCardView() {
        view.addSubview(transferingToMyCardView)
        transferingToMyCardView.translatesAutoresizingMaskIntoConstraints = false
        transferingToMyCardView.topAnchor.constraint(equalTo: minimumSumLabel.bottomAnchor, constant: 30).isActive = true
        transferingToMyCardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
        transferingToMyCardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -200).isActive = true

    }
    
    func setSelectRecieverView() {
        view.addSubview(selectRecieverView)
        selectRecieverView.translatesAutoresizingMaskIntoConstraints = false
        selectRecieverView.topAnchor.constraint(equalTo: minimumSumLabel.bottomAnchor, constant: 30).isActive = true
        selectRecieverView.leadingAnchor.constraint(equalTo: transferingToMyCardView.trailingAnchor, constant: 10).isActive = true
        selectRecieverView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
    }
    
    func setMyCardView() {
        view.addSubview(myCardView)
        myCardView.translatesAutoresizingMaskIntoConstraints = false
        myCardView.topAnchor.constraint(equalTo: transferingToMyCardView.bottomAnchor, constant: 70).isActive = true
        myCardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        myCardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        myCardView.heightAnchor.constraint(equalToConstant: 120).isActive = true
      

    }
    
    func setContinueButton() {
        view.addSubview(continueButton)
        continueButton.translatesAutoresizingMaskIntoConstraints = false
        continueButton.topAnchor.constraint(equalTo: myCardView.bottomAnchor, constant: 20).isActive = true
        continueButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        continueButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        continueButton.heightAnchor.constraint(equalToConstant: 52).isActive = true
        continueButton.backgroundColor = .rgb(67, 72, 79)
        continueButton.layer.cornerRadius = 15
        continueButton.setTitle("Davom ettirish", for: .normal)
        continueButton.setTitleColor(UIColor.white, for: .normal)
        continueButton.titleLabel?.font = .boldSystemFont(ofSize: 14)
    }
    
    func setConfirmationlabel() {
        view.addSubview(confirmationlabel)
        confirmationlabel.translatesAutoresizingMaskIntoConstraints = false
        confirmationlabel.topAnchor.constraint(equalTo: continueButton.bottomAnchor, constant: 20).isActive = true
        confirmationlabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        confirmationlabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        confirmationlabel.text = "Siz Davom ettirish tugamsini bosish orqali ommaviy taklifga rozilik bildirasiz "
        confirmationlabel.font = .boldSystemFont(ofSize: 14)
        confirmationlabel.textColor = .white
        confirmationlabel.textAlignment = .center
        confirmationlabel.numberOfLines = 2
    }
}

