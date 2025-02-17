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
               VStack{
                   Image("color_logo")
                       .resizable()
                       .scaledToFit()
                       .frame(width: 50)
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
                   .padding()
                   
                   Image("banner_top")
                       .resizable()
                       .scaledToFit()
                       .padding(.horizontal)
                   Text("Exclusive Offers")
                       .font(.headline)
                       .padding(.leading)
                   
                   ScrollView(.horizontal, showsIndicators: false){
                       HStack{
                           ForEach(products.suffix(2)){product in
                               ProductView(product: product)
                           }
                        
                       }
                       .padding(.horizontal)
                   }
                   Text("Groceries")
                       .font(.headline)
                       .padding(.leading)
                       
               }
           }
           .navigationBarTitle("Fresh Vegetable", displayMode: .inline)
        }
    }
}
struct ProductView:View{
    let product: Product
    var body: some View {
        VStack(alignment: .leading){
            Image(product.imageName)
                .resizable()
                .frame(width: 100, height: 100)
                .scaledToFit()
            Text(product.name)
                .font(.caption)
                .padding(.top, 5)
            Text("\(product.price)")
            
        }
        
    }
}
#Preview {
    HomeView2()
}
