//
//  HomeView2.swift
//  Food Delivery
//
//  Created by student on 17/02/25.
//

import SwiftUI
struct Product: Identifiable{
    let id = UUID()
    let name : String
    let imageName: String
    let price: String
}

struct HomeView2: View {
    let products = [
        Product(name: "Organic Bananas", imageName: "banana", price: "100 Rs"),
        Product(name: "Red Apple", imageName: "apple_red", price: "120 Rs"),
        Product(name: "Bell Pepper", imageName: "bell_pepper_red", price: "100 Rs"),
        Product(name: "Ginger", imageName: "ginger", price: "120 Rs"),
    ]
    var body: some View {
       NavigationView {
           ScrollView{
               VStack(alignment: .leading, spacing: 20){
                   HStack{
                       Spacer()
                       Image("location")
                           .resizable()
                           .scaledToFit()
                           .frame(width: 20,height: 30)
                       Text("Vadodara, India")
                           .font(.headline)
                           .fontWeight(.bold)
                       Spacer()
                   }
               }
           }
        }
    }
}

#Preview {
    HomeView2()
}
