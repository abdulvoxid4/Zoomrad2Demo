//
//  CashbackVC.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 05/07/24.
//

import UIKit

final class CashbackVC: UIViewController {
    
    private let mainView = CashbackVCView(
        mainLabelText: "Keshbek",
        scoresLabelText: "Ballar",
        scoresBalanceLabelText: "506.5",
        backButtonImageName: "chevron.backward")
    
    private let collectedView = SegmentedCollectedView(scoresLabelText: "506.5")
    private let usedView = SegmentedConUsedView(mainLabelText: "Sizda ishlatilgan ballar yo'q!")
    
    private let segmentedControl = UISegmentedControl()
    
    override func viewWillAppear(_ animated: Bool) {
    segmentedControl.selectedSegmentIndex = 0
        usedView.isHidden = true
        

    }
    
    override func viewDidLoad() {
        view.backgroundColor = .rgb(40, 47, 59)
        title = "Keshbek"
        navigationController?.isNavigationBarHidden = true
        
        setMainView()
        setSegmentedControl()
        setCollectedView()
        setUsedView()
    
        mainView.backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
    }
    
    @objc func backButtonTapped() {
        
        navigationController?.isNavigationBarHidden = false
        
        navigationController?.popViewController(animated: true)
    }
    
    @objc func changeIndex() {
        if segmentedControl.selectedSegmentIndex == 0 {
            collectedView.isHidden = false
            usedView.isHidden = true
        } else {
            collectedView.isHidden = true
            usedView.isHidden = false
        }
    }
}

extension CashbackVC {
    func setMainView() {
        view.addSubview(mainView)
        mainView.translatesAutoresizingMaskIntoConstraints = false
        mainView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        mainView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        mainView.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
        
    func setSegmentedControl() {
        view.addSubview(segmentedControl)
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        segmentedControl.topAnchor.constraint(equalTo: mainView.bottomAnchor, constant: 10).isActive = true
        segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        segmentedControl.heightAnchor.constraint(equalToConstant: 40).isActive = true
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.insertSegment(withTitle: "Yig'ilgan", at: 0, animated: true)
        segmentedControl.insertSegment(withTitle: "Ishlatilgan", at: 1, animated: true)
        segmentedControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .normal)
        segmentedControl.backgroundColor = .rgb(73, 83, 96)
        segmentedControl.selectedSegmentTintColor = .rgb(102, 183, 144)
        segmentedControl.addTarget(self, action: #selector(changeIndex), for: .valueChanged)
    }
    
    func setCollectedView() {
        view.addSubview(collectedView)
        collectedView.translatesAutoresizingMaskIntoConstraints = false
        collectedView.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 20).isActive = true
        collectedView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        collectedView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        collectedView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true

    }
    
    func setUsedView() {
        view.addSubview(usedView)
        usedView.translatesAutoresizingMaskIntoConstraints = false
        usedView.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 20).isActive = true
        usedView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        usedView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        usedView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
}
