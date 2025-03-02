//
//  FirebaseReference.swift
//  DrinkCoffee
//
//  Created by Zhanerke Ussen on 01/03/2025.
//

import Foundation
import FirebaseFirestore

enum FCollectionReference: String {
    case user
    case menu
    case order
    case basket
}

func firebaseReference(_ collectionReference: FCollectionReference) -> CollectionReference {
    return Firestore.firestore().collection(collectionReference.rawValue)
}
