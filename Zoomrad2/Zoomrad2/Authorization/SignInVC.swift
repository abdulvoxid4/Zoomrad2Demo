//
//  SignInVC.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 04/07/24.
//

import UIKit

class SignInVC: UIViewController {
    
    private let zoomradLogoImage = UIImageView()
    private let telNumberLabel = UILabel()
    private let telNumberTextField = UITextField()
    private let continueButton = UIButton(type: .system)
    private let termsLabel = UILabel()
    
//    init(number: String) {
//        super.init(nibName: nil, bundle: nil)
//    }
    
  
    
    override func viewDidLoad() {
        view.backgroundColor = .rgb(40, 47, 59)
        
        setzoomradLogoImage()
        setTelNumberLabel()
        setTelNumberTextField()
        setContinueButton()
        setTermsLabel()
        
        telNumberTextField.addTarget(self, action: #selector(continueButtonTapped), for: .editingChanged)
        continueButton.isEnabled = false
    }
    
    @objc func continueButtonTapped(_ textField: UITextField) {
        if textField.text?.count == 9 {
            continueButton.backgroundColor = .rgb(84, 172, 127)
            continueButton.titleLabel?.textColor = .white
            continueButton.isEnabled = true
        } else {
            continueButton.backgroundColor = .rgb(67, 72, 79)
            continueButton.isEnabled = false
        }
    }
    
    @objc func continueButtonMoved(_ sender: UITapGestureRecognizer) {
        let verifyView = VerifyCodeVC()
        verifyView.number = "+998\(telNumberTextField.text ?? "")"
        
        navigationController?.pushViewController(verifyView, animated: true)
        
        UserDefaults.standard.setValue(telNumberTextField.text, forKey: "userNumber")
    }
}

extension SignInVC {
    func setzoomradLogoImage() {
        view.addSubview(zoomradLogoImage)
        zoomradLogoImage.translatesAutoresizingMaskIntoConstraints = false
        zoomradLogoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 130).isActive = true
        zoomradLogoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        zoomradLogoImage.widthAnchor.constraint(equalToConstant: 120).isActive = true
        zoomradLogoImage.heightAnchor.constraint(equalToConstant: 80).isActive = true
        zoomradLogoImage.image = UIImage(named: "zoomradLogo")
    }
    
    func setTelNumberLabel() {
        view.addSubview(telNumberLabel)
        telNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        telNumberLabel.topAnchor.constraint(equalTo: zoomradLogoImage.bottomAnchor, constant: 130).isActive = true
        telNumberLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        telNumberLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -150).isActive = true
        telNumberLabel.text = "Telefon raqami"
        telNumberLabel.textColor = .rgb(169, 176, 184)
        telNumberLabel.font = .boldSystemFont(ofSize: 12)
    }
    
    func setTelNumberTextField() {
        view.addSubview(telNumberTextField)
        telNumberTextField.translatesAutoresizingMaskIntoConstraints = false
        telNumberTextField.topAnchor.constraint(equalTo: telNumberLabel.bottomAnchor, constant: 10).isActive = true
        telNumberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        telNumberTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        telNumberTextField.heightAnchor.constraint(equalToConstant: 52).isActive = true
        telNumberTextField.backgroundColor = .rgb(73, 83, 96)
        telNumberTextField.layer.cornerRadius = 15
        telNumberTextField.attributedPlaceholder = NSAttributedString(
            string: "Telefon raqamini kiriting",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.rgb(169, 176, 184).self]
        )
        let leftView = UILabel()
        leftView.text = "  +998 "
        leftView.textColor = .white
        telNumberTextField.leftView = leftView
        telNumberTextField.leftViewMode = .always
        telNumberTextField.textColor = .white
        telNumberTextField.keyboardType = .numberPad
        
    }
    
    func setContinueButton() {
        view.addSubview(continueButton)
        continueButton.translatesAutoresizingMaskIntoConstraints = false
        continueButton.topAnchor.constraint(equalTo: telNumberTextField.bottomAnchor, constant: 30).isActive = true
        continueButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        continueButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        continueButton.heightAnchor.constraint(equalToConstant: 52).isActive = true
        continueButton.backgroundColor = .rgb(67, 72, 79)
        continueButton.layer.cornerRadius = 15
        continueButton.setTitle("Davom ettirish", for: .normal)
        continueButton.setTitleColor(UIColor.white, for: .normal)
        continueButton.titleLabel?.font = .boldSystemFont(ofSize: 14)
        continueButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(continueButtonMoved)))
     
    }
    
    func setTermsLabel() {
        view.addSubview(termsLabel)
        termsLabel.translatesAutoresizingMaskIntoConstraints = false
        termsLabel.topAnchor.constraint(equalTo: continueButton.bottomAnchor, constant: 50).isActive = true
        termsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        termsLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        termsLabel.heightAnchor.constraint(equalToConstant: 60).isActive = true
        termsLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        termsLabel.text = "Mobil ilovada ro'yatdan o'tish orgali siz foydalanuvchi shartnomasi va maxfiylik siyosati shartlarini qabul qilganingizni tasdiqlaysiz!"
        termsLabel.textColor = .white
        termsLabel.font = .boldSystemFont(ofSize: 14)
        termsLabel.textAlignment = .center
        termsLabel.numberOfLines = 3
        
        
    }
}

