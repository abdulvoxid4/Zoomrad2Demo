//
//  AddCardsVCTypes.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 05/07/24.
//

import UIKit

enum AddCardsTypes: Int, CaseIterable {
    case cardView

    
    var layout: NSCollectionLayoutSection {
        switch self {
        case .cardView: return .addCardVC
        }
    }
}

enum CardTypes: Int, CaseIterable {
   case firstCard
    case secondCard
    case thirdCard
    case fourthCard
    case fifthCard
    case sixthCard
}
