//
//  DrinkRow.swift
//  DrinkCoffee
//
//  Created by Zhanerke Ussen on 15/03/2025.
//

import SwiftUI

struct DrinkRow: View {
    var categoryName: String
    var drinks: [Drink]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.largeTitle)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(drinks) { drink in
                        DrinkItem(drink: drink)
                            .frame(width: 300)
                            .padding(.trailing, 30)
                    }
                }
            }
        }
    }
}

#Preview {
    DrinkRow(categoryName: "Hot bevs", drinks: drinkData)
}
