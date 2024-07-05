//
//  HomeViewTypes.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 05/07/24.
//

import UIKit

enum HomeSectionType: Int, CaseIterable {
    case fourButtons
    case Suggestions
    case fastPayments
    case currencies
    
    var layout: NSCollectionLayoutSection {
        switch self {
        case .fourButtons: return .swiftTouchesSection
        case .Suggestions: return .suggestionSection
        case .fastPayments: return .fastPayment
        case .currencies: return .currencyRate
        }
    }
}


enum HomeFourButtonsType: Int, CaseIterable {
    case cashback
    case fund
    case deposits
    case credits
    
}

enum HomeSuggestionsType: Int, CaseIterable {
    case hajPayment
    case individualDesign
    case visa
    case umraPayment
    case avtoInsurance
    case investment
    case sello
    case takingDeposit
    case stateServices
    case virtualCard
    case myHome
    case universityContract
    case myCar
    case conversion
}

enum HomeFastPaymentsType: Int, CaseIterable {
    case add
}

enum HomeCurrenciesType: Int, CaseIterable {
    case usa
    case euro
    case japan
    case swissFranc
    case uk
}


