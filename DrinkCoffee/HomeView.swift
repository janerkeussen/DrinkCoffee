//
//  ContentView.swift
//  DrinkCoffee
//
//  Created by Zhanerke Ussen on 01/03/2025.
//

import SwiftUI

struct HomeView: View {
    
    var categories: [String : [Drink]] {
        .init(grouping: drinkData) { $0.category.rawValue }
    }
    
    var body: some View {
        NavigationStack {
            List(categories.keys.sorted(), id: \String.self) { key in
                DrinkRow(categoryName: key, drinks: categories[key] ?? [])
                    .frame(height: 320)
                    .padding([.top, .bottom])
            }
            .navigationTitle("DrinkCoffee")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        print("basket")
                    } label: {
                        Image("basket")
                            .renderingMode(.template)
                    }
                }
                
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        print("Log out")
                    } label: {
                        Text("Log out")
                            .fontWeight(.semibold)
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
