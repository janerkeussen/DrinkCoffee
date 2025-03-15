//
//  DrinkItem.swift
//  DrinkCoffee
//
//  Created by Zhanerke Ussen on 15/03/2025.
//

import SwiftUI

struct DrinkItem: View {
    var drink: Drink
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Image(drink.imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(radius: 10)
            VStack(alignment: .leading, spacing: 5) {
                Text(drink.name)
                    .foregroundStyle(.primary)
                    .font(.headline)
                Text(drink.description)
                    .foregroundStyle(.secondary)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .frame(height: 40)
            }
            
        }.padding(16)
    }
}

#Preview {
    DrinkItem(drink: drinkData[0])
}
