//
//  UICollectionViewSectionExtension.swift
//  Zoomrad2
//
//  Created by Abdulvoxid on 05/07/24.
//

import UIKit

extension NSCollectionLayoutSection {
    static var swiftTouchesSection: NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5), heightDimension: .fractionalHeight(1.5))
        
        
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let item2 = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = .init(top: 5, leading: 7, bottom: 60, trailing: 7)
        item2.contentInsets = .init(top: 5, leading: 7, bottom: 60, trailing: 7)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(90))
    let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems:[item ,item2])
        
        let section = NSCollectionLayoutSection(group: group)
        return section
    }
    
    static var suggestionSection: NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1),
            heightDimension: .fractionalHeight(1)
        )
        
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = .init(top: 5, leading: 7, bottom: 5, trailing: 7)
        
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .absolute(120),
            heightDimension: .absolute(150)
        )
        
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        
        let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(50))
                let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
                    layoutSize: headerSize,
                    elementKind: UICollectionView.elementKindSectionHeader,
                    alignment: .top
                )
                
                section.boundarySupplementaryItems = [sectionHeader]
        
        
        return section
    }
    
    static var fastPayment: NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1),
            heightDimension: .fractionalHeight(1)
        )
        
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = .init(top: 5, leading: 10, bottom: 5, trailing: 10)
        
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .absolute(130),
            heightDimension: .absolute(130)
        )
        
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        
        let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(50))
                let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
                    layoutSize: headerSize,
                    elementKind: UICollectionView.elementKindSectionHeader,
                    alignment: .top
                )
                
                section.boundarySupplementaryItems = [sectionHeader]
        
        return section
    }
    
    static var currencyRate: NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1),
            heightDimension: .fractionalHeight(1)
        )
        
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = .init(top: 5, leading: 10, bottom: 5, trailing: 10)
        
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .absolute(UIScreen.main.bounds.width - 130),
            heightDimension: .absolute(85)
        )
        
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        
        let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(50))
                let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
                    layoutSize: headerSize,
                    elementKind: UICollectionView.elementKindSectionHeader,
                    alignment: .top
                )
                
                section.boundarySupplementaryItems = [sectionHeader]
        
        return section
    }
    
    static var paymentsVC: NSCollectionLayoutSection {
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5), heightDimension: .fractionalHeight(1.5))
            
            
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            let item2 = NSCollectionLayoutItem(layoutSize: itemSize)
            
            item.contentInsets = .init(top: 10, leading: 0, bottom: 10, trailing: 0)
            item2.contentInsets = .init(top: 10, leading: 0, bottom: 10, trailing: 0)
            
            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(65))
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems:[item ,item2])
            
            let section = NSCollectionLayoutSection(group: group)
            return section
    }
    
    static var moreServiceVC: NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.33), heightDimension: .fractionalHeight(1.5))
            
            
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            let item2 = NSCollectionLayoutItem(layoutSize: itemSize)
            let item3 = NSCollectionLayoutItem(layoutSize: itemSize)
            item.contentInsets = .init(top: 5, leading: 8, bottom: 70, trailing: 8)
            item2.contentInsets = .init(top: 5, leading: 8, bottom: 70, trailing: 8)
            item3.contentInsets = .init(top: 5, leading: 8, bottom: 70, trailing: 8)
            
            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(120))
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems:[item ,item2, item3])
            
            let section = NSCollectionLayoutSection(group: group)
            return section
    }
    
    static var addCardVC: NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
            
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            item.contentInsets = .init(top: 20, leading: 20, bottom: 0, trailing: 20)
            
        let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(UIScreen.main.bounds.width - 32), heightDimension: .absolute(190))
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems:[item])
            
            let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuousGroupLeadingBoundary
            return section
    }
}

