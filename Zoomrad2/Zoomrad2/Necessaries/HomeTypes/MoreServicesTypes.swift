//
//  MoreServicesTypes.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 05/07/24.
//

import UIKit

enum MoreServicesSectionType: Int, CaseIterable {
    case mainSection
    
    var layout : NSCollectionLayoutSection {
        switch self {
        case .mainSection: return .moreServiceVC
        }
    }
}

enum MoreServicesViewItems: Int, CaseIterable {
    case sello
    case invest
    case identification
    case myCards
    case monitoring
    case payments
    case transfer
    case myHome
    case myCar
    case visa
    case onlineServices
    case requisitions
    case autoPay
    case operationsStory
    case bookingCard
    case myAppilications
    case exchangeRate
    case conversion
    case moneyTransfers
    case settings
    
}
