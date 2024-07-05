//
//  VerifyCodeVC.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 04/07/24.
//

import UIKit

class VerifyCodeVC: UIViewController {
    
    private let zoomradLogoImage = UIImageView()
    private let label1 = UILabel()
     var number : String = ""
    private let telNumberLabel = UILabel()
    private let verifyCodeTextField = UITextField()
    private let resendCodeButton = UIButton(type: .system)
    private let confirmButton = UIButton(type: .system)
    var remainingTime = 59
    var timer: Timer?
    
    let timerLabel: UILabel = {
        let label = UILabel()
        label.text = "00:59"
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    override func viewDidLoad() {
        view.backgroundColor = .rgb(40, 47, 59)
        
        setzoomradLogoImage()
        setLabel1()
        setTelNumberLabel()
        setTextFieldForCode()
        SetTimer()
        setResendCodeButton()
        setConfirmButton()
        startTimer()
        
        verifyCodeTextField.addTarget(self, action: #selector(confirmButtonTapped), for: .editingChanged)
        confirmButton.isEnabled = false
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        startTimer()
      timer?.invalidate()
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
            if remainingTime > 0 {
                remainingTime -= 1
                let minutes = remainingTime / 60
                let seconds = remainingTime % 60
                timerLabel.text = String(format: "%02d:%02d", minutes, seconds)

            } else {
                timer?.invalidate()
            }
        }
    
    @objc func confirmButtonTapped(_ textfield: UITextField) {
        if textfield.text?.count == 6 {
            confirmButton.backgroundColor = .rgb(84, 172, 127)
            confirmButton.setTitleColor(UIColor.white, for: .normal)
            confirmButton.isEnabled = true
        } else {
            confirmButton.backgroundColor = .rgb(67, 72, 79)
            confirmButton.setTitleColor(UIColor.white, for: .normal)
            confirmButton.isEnabled = false
        }
    }
    
    @objc func confirmButtonMoved(_ sender: UITapGestureRecognizer) {
        navigationController?.pushViewController(UserInfoVC(), animated: true)
    }

}

extension VerifyCodeVC {
    func setzoomradLogoImage() {
        view.addSubview(zoomradLogoImage)
        zoomradLogoImage.translatesAutoresizingMaskIntoConstraints = false
        zoomradLogoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 130).isActive = true
        zoomradLogoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        zoomradLogoImage.widthAnchor.constraint(equalToConstant: 120).isActive = true
        zoomradLogoImage.heightAnchor.constraint(equalToConstant: 80).isActive = true
        zoomradLogoImage.image = UIImage(named: "zoomradLogo")
    }
    
    func setLabel1() {
        view.addSubview(label1)
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.topAnchor.constraint(equalTo: zoomradLogoImage.bottomAnchor, constant: 20).isActive = true
        label1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label1.text = "Tasdiqlash SMS-kodi quyidagi raqamga yuborildi"
        label1.textColor = .white
        label1.textAlignment = .center
        label1.font = .boldSystemFont(ofSize: 14)
    }
    
    func setTelNumberLabel() {
        view.addSubview(telNumberLabel)
        telNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        telNumberLabel.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 20).isActive = true
        telNumberLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        telNumberLabel.text = number
        telNumberLabel.textColor = .white
        telNumberLabel.textAlignment = .center
        telNumberLabel.font = .boldSystemFont(ofSize: 14)
    }
    
    func setTextFieldForCode() {
        view.addSubview(verifyCodeTextField)
        verifyCodeTextField.translatesAutoresizingMaskIntoConstraints = false
        verifyCodeTextField.topAnchor.constraint(equalTo: telNumberLabel.bottomAnchor, constant: 40).isActive = true
        verifyCodeTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        verifyCodeTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        verifyCodeTextField.heightAnchor.constraint(equalToConstant: 52).isActive = true
        verifyCodeTextField.backgroundColor = .rgb(73, 83, 96)
        verifyCodeTextField.layer.cornerRadius = 15
        verifyCodeTextField.attributedPlaceholder = NSAttributedString(
            string: "SMS-kod",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.rgb(169, 176, 184).self]
        )
        verifyCodeTextField.textAlignment = .center
        verifyCodeTextField.textColor = .white
        verifyCodeTextField.keyboardType = .numberPad
    }
    
    func SetTimer() {
        view.addSubview(timerLabel)
        timerLabel.translatesAutoresizingMaskIntoConstraints = false
        timerLabel.topAnchor.constraint(equalTo: verifyCodeTextField.bottomAnchor , constant: 35).isActive = true
        timerLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        timerLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        timerLabel.widthAnchor.constraint(equalToConstant: 50).isActive = true
        timerLabel.textColor = .white
        
    }
    
    func setResendCodeButton() {
        view.addSubview(resendCodeButton)
        resendCodeButton.translatesAutoresizingMaskIntoConstraints = false
        resendCodeButton.topAnchor.constraint(equalTo:verifyCodeTextField.bottomAnchor , constant: 20).isActive = true
        resendCodeButton.leadingAnchor.constraint(equalTo: timerLabel.trailingAnchor, constant: 20).isActive = true
        resendCodeButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        resendCodeButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        resendCodeButton.backgroundColor = .rgb(56, 64, 76)
        resendCodeButton.layer.cornerRadius = 10
        resendCodeButton.setTitle("Kodni qayta yuboring", for: .normal)
        resendCodeButton.setTitleColor(UIColor.white, for: .normal)
        resendCodeButton.titleLabel?.numberOfLines = 2
        
    }
    
    func setConfirmButton() {
        view.addSubview(confirmButton)
        confirmButton.translatesAutoresizingMaskIntoConstraints = false
        confirmButton.topAnchor.constraint(equalTo:resendCodeButton.bottomAnchor , constant: 30).isActive = true
        confirmButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        confirmButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        confirmButton.heightAnchor.constraint(equalToConstant: 52).isActive = true
        confirmButton.backgroundColor = .rgb(67, 72, 79)
        confirmButton.layer.cornerRadius = 15
        confirmButton.setTitle("Tasdiqlash", for: .normal)
        confirmButton.setTitleColor(UIColor.white, for: .normal)
        confirmButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(confirmButtonMoved)))
        
    }
    
    
}

