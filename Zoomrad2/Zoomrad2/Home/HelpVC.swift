//
//  HelpVC.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 04/07/24.
//

import UIKit

final class HelpVC : UIViewController {
    
    private let callToBankView = HelpVCButtonView(
        bottomLabelText: "Bankga qo'ng'iroq",
        ImageViewName: "phone"
    )
    
    private let mapButtonView = HelpVCButtonView(
        bottomLabelText: "Bank xaritada",
        ImageViewName: "map"
    )
    
    override func viewDidLoad() {
        view.backgroundColor = .rgb(40, 47, 59)
        title = "Yordam"
        
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        
        setCallToBankView()
        setMapButtonView()
    }
}

extension HelpVC {
    
    func setCallToBankView() {
        view.addSubview(callToBankView)
        callToBankView.translatesAutoresizingMaskIntoConstraints = false
        callToBankView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        callToBankView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        callToBankView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        callToBankView.widthAnchor.constraint(equalToConstant: 80).isActive = true
    }
    
    func setMapButtonView() {
        view.addSubview(mapButtonView)
        mapButtonView.translatesAutoresizingMaskIntoConstraints = false
        mapButtonView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        mapButtonView.leadingAnchor.constraint(equalTo: callToBankView.trailingAnchor, constant: 5).isActive = true
        mapButtonView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        mapButtonView.widthAnchor.constraint(equalToConstant: 80).isActive = true
    }
}
