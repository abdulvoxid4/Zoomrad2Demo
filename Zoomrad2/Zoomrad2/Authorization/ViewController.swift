//
//  ViewController.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 04/07/24.
//

import UIKit

class ViewController: UIViewController {

    private let zoomradLogoImage = UIImageView()
    private let uzbButton = UIButton(type: .system)
    private let engButton = UIButton(type: .system)
    private let rusButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .rgb(40, 47, 59)
        
        setzoomradLogoImage()
        setLanguageButtons()
    }
    @objc func uzbButtonTapped(_ sender: UITapGestureRecognizer) {
       navigationController?.pushViewController(SignInVC(), animated: true)
    }

}

extension ViewController {
    
    func setzoomradLogoImage() {
        view.addSubview(zoomradLogoImage)
        zoomradLogoImage.translatesAutoresizingMaskIntoConstraints = false
        zoomradLogoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 130).isActive = true
        zoomradLogoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        zoomradLogoImage.widthAnchor.constraint(equalToConstant: 120).isActive = true
        zoomradLogoImage.heightAnchor.constraint(equalToConstant: 80).isActive = true
        zoomradLogoImage.image = UIImage(named: "zoomradLogo")
    }
    
    func setLanguageButtons() {
        view.addSubview(uzbButton)
        uzbButton.translatesAutoresizingMaskIntoConstraints = false
        uzbButton.topAnchor.constraint(equalTo: zoomradLogoImage.bottomAnchor, constant: 150).isActive = true
        uzbButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        uzbButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        uzbButton.heightAnchor.constraint(equalToConstant: 52).isActive = true
        uzbButton.widthAnchor.constraint(equalToConstant: 360).isActive = true
        uzbButton.setTitle("O`zbekcha", for: .normal)
        uzbButton.setTitleColor(UIColor.white, for: .normal)
        uzbButton.backgroundColor = .rgb(73, 83, 96)
        uzbButton.layer.cornerRadius = 15
        uzbButton.titleLabel?.font = .boldSystemFont(ofSize: 16)
        uzbButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(uzbButtonTapped)))
        
        view.addSubview(rusButton)
        rusButton.translatesAutoresizingMaskIntoConstraints = false
        rusButton.topAnchor.constraint(equalTo: uzbButton.bottomAnchor, constant: 20).isActive = true
        rusButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        rusButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        rusButton.heightAnchor.constraint(equalToConstant: 52).isActive = true
        rusButton.widthAnchor.constraint(equalToConstant: 360).isActive = true
        rusButton.setTitle("Русский", for: .normal)
        rusButton.setTitleColor(UIColor.white, for: .normal)
        rusButton.backgroundColor = .rgb(73, 83, 96)
        rusButton.layer.cornerRadius = 15
        rusButton.titleLabel?.font = .boldSystemFont(ofSize: 16)
        
        view.addSubview(engButton)
        engButton.translatesAutoresizingMaskIntoConstraints = false
        engButton.topAnchor.constraint(equalTo: rusButton.bottomAnchor, constant: 20).isActive = true
        engButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        engButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        engButton.heightAnchor.constraint(equalToConstant: 52).isActive = true
        engButton.widthAnchor.constraint(equalToConstant: 360).isActive = true
        engButton.setTitle("English", for: .normal)
        engButton.setTitleColor(UIColor.white, for: .normal)
        engButton.backgroundColor = .rgb(73, 83, 96)
        engButton.layer.cornerRadius = 15
        engButton.titleLabel?.font = .boldSystemFont(ofSize: 16)
        
    }
}



extension UIColor {
    static func rgb(_ r : CGFloat, _ g: CGFloat, _ b: CGFloat) -> UIColor {
        UIColor(red: r / 255, green: g / 255, blue: b / 255, alpha: 1)
    }
}

extension UIView {
    
    enum Anchor {
        case top
        case left
        case right
        case bottom
        case width
        case height
        case centerX
        case centerY
    }
    
    func setConstraints(anchor: Anchor, from view: UIView, _ constant: CGFloat) {
        self.translatesAutoresizingMaskIntoConstraints = false
        switch anchor {
        case .top:
            self.topAnchor.constraint(equalTo: view.topAnchor, constant: constant).isActive = true
        case .left:
            self.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: constant).isActive = true
        case .right:
            self.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -constant).isActive = true
        case .bottom:
            self.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -constant).isActive = true
        case .width:
            self.widthAnchor.constraint(equalToConstant: constant).isActive = true
        case .height:
            self.heightAnchor.constraint(equalToConstant: constant).isActive = true
        case .centerX:
            self.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        case .centerY:
            self.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        }
    }

}

