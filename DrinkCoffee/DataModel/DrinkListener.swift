//
//  DrinkListener.swift
//  DrinkCoffee
//
//  Created by Zhanerke Ussen on 15/03/2025.
//

import Foundation
import Firebase


class DrinkListener: ObservableObject {
    @Published var drinks: [Drink] = []
    
    init() {
        downloadDrinks()
    }
    
    func downloadDrinks() {
        firebaseReference(.menu).getDocuments { (snapshot, error) in
            guard let snapshot = snapshot, !snapshot.isEmpty else {
                return
            }
            
            self.drinks = DrinkListener.drinkFromDictionary(snapshot)
        }
    }
    
    static func drinkFromDictionary(_ snapshot: QuerySnapshot) -> [Drink] {
        var allDrinks: [Drink] = []
        
        for document in snapshot.documents {
            let drinkData = document.data()
            
            allDrinks.append(
                Drink(
                    id: drinkData[kID] as? String ?? UUID().uuidString,
                    name: drinkData[kNAME] as? String ?? "Unknown",
                    imageName: drinkData[kIMAGENAME] as? String ?? "unknown",
                    category: Category(rawValue: drinkData[kCATEGORY] as? String ?? "cold") ?? .cold,
                    description: drinkData[kDESCRIPTION] as? String ?? "Description is missing",
                    price: drinkData[kPRICE] as? Double ?? 0.0)
            )
        }
        
        return allDrinks
    }
}
