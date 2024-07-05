//
//  PaymentsVCTypes.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 05/07/24.
//

import UIKit


enum PaymentsVCSectionType: Int, CaseIterable {
    case payments
    
    var layout : NSCollectionLayoutSection {
        switch self {
        case .payments: return .paymentsVC
        }
    }
}

enum PaymentsVCCollViewItems : Int, CaseIterable {
    case mobileOperators
    case homePhone
    case transport
    case credits
    case donate
    case ads
    case onlineServices
    case electronWallets
    case hostingProviders
    case internetProviders
    case communalServices
    case tv
    case stateServices
    case internetMagazines
    case services
    case education
    case games
    case commonFood
    
}
