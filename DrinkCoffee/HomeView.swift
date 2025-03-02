//
//  ContentView.swift
//  DrinkCoffee
//
//  Created by Zhanerke Ussen on 01/03/2025.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            Text("Hello, Alex")
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
