//
//  UserInfoVC.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 04/07/24.
//

import UIKit

class UserInfoVC: UIViewController {
    
    private let zoomradLogoImage = UIImageView()
    private let label1 = UILabel()
    private let nameLabel = UILabel()
    private let surNameLabel = UILabel()
     let nameTextField = UITextField()
     let surnameTextField = UITextField()
    let dateBirthLabel = UILabel()
    let datePicker = UIDatePicker()
    private let confirmButton = UIButton(type: .system)

    
    override func viewDidLoad() {
        view.backgroundColor = .rgb(40, 47, 59)
        
        activateFunctions()
        
        confirmButton.isEnabled = false
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        let isAllTextFieldsFilled = !(nameTextField.text?.isEmpty ?? true) &&
                                    !(surnameTextField.text?.isEmpty ?? true)

        confirmButton.backgroundColor = isAllTextFieldsFilled ? .rgb(84, 172, 127)  : .rgb(67, 72, 79)
        confirmButton.isEnabled = isAllTextFieldsFilled ? true : false
        
    
   }
    
    @objc func bottomButtonPressed(sender: UIButton) {
        
    navigationController?.pushViewController(TabBarVC(), animated: true)

        let vc = TabBarVC()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: false)

        UserDefaults.standard.setValue(nameTextField.text, forKey: "userName")
        UserDefaults.standard.setValue(surnameTextField.text, forKey: "userSurname")
        UserDefaults.standard.setValue(true, forKey: "isRegistred")
    }
    
    @objc func dateChanged(_ sender: UIDatePicker) {
           let dateFormatter = DateFormatter()
           dateFormatter.dateStyle = .medium
           dateFormatter.timeStyle = .none
           let selectedDate = dateFormatter.string(from: sender.date)
           print("Selected date: \(selectedDate)")
       }
    
}

extension UserInfoVC {
    
    func activateFunctions() {
        setzoomradLogoImage()
        setLabel1()
        setNameLabel()
        setNameTextField()
        setSurnameLabel()
        setSurnameTextField()
        setDateBirthLabel()
        setDatePicker()
        setConfirmButton()
    }
    
    func setzoomradLogoImage() {
        view.addSubview(zoomradLogoImage)
        zoomradLogoImage.translatesAutoresizingMaskIntoConstraints = false
        zoomradLogoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        zoomradLogoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        zoomradLogoImage.widthAnchor.constraint(equalToConstant: 120).isActive = true
        zoomradLogoImage.heightAnchor.constraint(equalToConstant: 80).isActive = true
        zoomradLogoImage.image = UIImage(named: "zoomradLogo")
    }
    
    func setLabel1() {
        view.addSubview(label1)
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.topAnchor.constraint(equalTo: zoomradLogoImage.bottomAnchor, constant: 35).isActive = true
        label1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label1.text = "Ma`lumotlaringizni kiriting"
        label1.textColor = .white
        label1.font = .boldSystemFont(ofSize: 15)
    }
    
    func setNameLabel() {
        view.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 50).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        nameLabel.text = "Ism"
        nameLabel.textColor = .white
        nameLabel.font = .boldSystemFont(ofSize: 15)
    }
    
    func setNameTextField() {
        view.addSubview(nameTextField)
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10).isActive = true
        nameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        nameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        nameTextField.heightAnchor.constraint(equalToConstant: 52).isActive = true
        nameTextField.backgroundColor = .rgb(73, 83, 96)
        nameTextField.layer.cornerRadius = 15
        nameTextField.attributedPlaceholder = NSAttributedString(
            string: "Ismingizni kiriting",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.rgb(169, 176, 184).self]
        )
        let leftView = UILabel()
        leftView.text = "   "
        leftView.textColor = .white
        nameTextField.leftView = leftView
        nameTextField.leftViewMode = .always
        nameTextField.textColor = .white
        
        
//        let sideMenuVC = SideMenuVC()
//        sideMenuVC.userNameLabel.text = nameTextField.text ?? "999"
    }
    
    func setSurnameLabel() {
        view.addSubview(surNameLabel)
        surNameLabel.translatesAutoresizingMaskIntoConstraints = false
        surNameLabel.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 30).isActive = true
        surNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        surNameLabel.text = "Familya"
        surNameLabel.textColor = .white
        surNameLabel.font = .boldSystemFont(ofSize: 15)
    }
    
    func setSurnameTextField() {
        view.addSubview(surnameTextField)
        surnameTextField.translatesAutoresizingMaskIntoConstraints = false
        surnameTextField.topAnchor.constraint(equalTo: surNameLabel.bottomAnchor, constant: 10).isActive = true
        surnameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        surnameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        surnameTextField.heightAnchor.constraint(equalToConstant: 52).isActive = true
        surnameTextField.backgroundColor = .rgb(73, 83, 96)
        surnameTextField.layer.cornerRadius = 15
        surnameTextField.attributedPlaceholder = NSAttributedString(
            string: "Familyangizni kiriting",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.rgb(169, 176, 184).self]
        )
        let leftView = UILabel()
        leftView.text = "   "
        leftView.textColor = .white
        surnameTextField.leftView = leftView
        surnameTextField.leftViewMode = .always
        surnameTextField.textColor = .white
        
        surnameTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
    }
    
    func setDateBirthLabel() {
        view.addSubview(dateBirthLabel)
        dateBirthLabel.translatesAutoresizingMaskIntoConstraints = false
        dateBirthLabel.topAnchor.constraint(equalTo: surnameTextField.bottomAnchor, constant: 15).isActive = true
        dateBirthLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        dateBirthLabel.text = "Tug'ulgan sana"
        dateBirthLabel.textColor = .white
        dateBirthLabel.font = .boldSystemFont(ofSize: 15)
    }
    
    func setDatePicker() {
        view.addSubview(datePicker)
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        datePicker.topAnchor.constraint(equalTo: dateBirthLabel.bottomAnchor, constant: 15).isActive = true
        datePicker.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.addTarget(self, action: #selector(dateChanged), for: .valueChanged)
    
    }
    
    func setConfirmButton() {
        view.addSubview(confirmButton)
        confirmButton.translatesAutoresizingMaskIntoConstraints = false
        confirmButton.topAnchor.constraint(equalTo: datePicker.bottomAnchor, constant: 20).isActive = true
        confirmButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        confirmButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        confirmButton.heightAnchor.constraint(equalToConstant: 52).isActive = true
        confirmButton.backgroundColor = .rgb(67, 72, 79)
        confirmButton.layer.cornerRadius = 15
        confirmButton.setTitle("Tasdiqlash", for: .normal)
        confirmButton.setTitleColor(UIColor.white, for: .normal)
        confirmButton.titleLabel?.font = .boldSystemFont(ofSize: 14)
        confirmButton.addTarget(self, action: #selector(bottomButtonPressed), for: .touchUpInside)
        
    }
}

