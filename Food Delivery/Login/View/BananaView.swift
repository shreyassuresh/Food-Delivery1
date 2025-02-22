//
//  BananaView.swift
//  Food Delivery
//
//  Created by student on 22/02/25.
//

import SwiftUI

struct BananaView: View {
    var body: some View {
        ProductsDetailView(
            name: "Banana",
            imageName: "banana",
            quantity: "3",
            price: "110",  // Price per item
            description: "Apples Are Nutritious. Apples May Be Good For Weight Loss. Apples May Be Good For Your Heart. As Part Of A Healthful And Varied Diet.",
            nutritionInfo: "Calories: 52, Fat: 0.2g, Carbs: 14g, Fiber: 2.4g",
            rating: 5
        )
    }
}

#Preview {
    BananaView()
}
