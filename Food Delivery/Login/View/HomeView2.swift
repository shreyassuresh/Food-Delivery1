import SwiftUI

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let price: String
}

struct HomeView2: View {
    @State private var searchQuery: String = ""
    
    let products = [
        Product(name: "Organic Bananas", imageName: "banana", price: "100 Rs"),
        Product(name: "Red Apple", imageName: "apple_red", price: "120 Rs"),
        Product(name: "Bell Pepper", imageName: "bell_pepper_red", price: "100 Rs"),
        Product(name: "Ginger", imageName: "ginger", price: "120 Rs"),
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    // Logo and Location
                    Image("color_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                    
                    HStack {
                        Image("location")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 30)
                        Text("Vadodara, India")
                            .font(.headline)
                            .fontWeight(.bold)
                    }
                    .padding()
                    
                    // Search Bar
                    HStack {
                        Image("search")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 18, height: 30)
                            .padding(.leading, 30)
                        
                        TextField("Search here...", text: $searchQuery)
                            .padding(.leading, 7)
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(7)
                            .frame(height: 45)
                            .padding(.leading, 3)
                            .padding(.trailing, 30)
                    }
                    
                    // Banner Image
                    Image("banner_top")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 350)
                    
                    // Exclusive Offers Section
                    HStack {
                        Text("Exclusive Offer")
                            .font(.system(size: 23, weight: .semibold))
                        
                        Spacer()
                        
                        Text("See all")
                            .foregroundColor(.green)
                    }
                    .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(products.prefix(2)) { product in
                                ProductView(product: product)
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    // Best Selling Section
                    HStack {
                        Text("Best Selling")
                            .font(.system(size: 23, weight: .semibold))
                        
                        Spacer()
                        
                        Text("See all")
                            .foregroundColor(.green)
                    }
                    .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(products.suffix(2)) { product in
                                ProductView(product: product)
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    // Groceries Section with Cool Background
                    VStack {
                        HStack {
                            Text("Groceries")
                                .font(.system(size: 23, weight: .semibold))
                                .padding(.trailing, 70)
                            
                            Spacer()
                            
                            Text("See all")
                                .foregroundColor(.green)
                                .padding(.leading, 130)
                        }
                        .padding(.horizontal)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                // Pulses
                                VStack {
                                    Image("pulses")
                                        .resizable()
                                        .frame(width: 60, height: 60)
                                    
                                    VStack(alignment: .leading) {
                                        Text("Pulses")
                                            .font(.system(size: 17, weight: .medium))
                                    }
                                    .padding()
                                }
                                
                                // Rice
                                VStack {
                                    Image("rice")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 60, height: 60)
                                        .padding(.leading, 130)
                                    
                                    VStack(alignment: .leading) {
                                        Text("Rice")
                                            .font(.system(size: 17, weight: .medium))
                                    }
                                    .padding()
                                }
                            }
                        }
                    }
                    .padding()
                    .background(LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.1), Color.green.opacity(0.1)]), startPoint: .top, endPoint: .bottom))
                    .cornerRadius(20)
                    .shadow(radius: 5)
                }
            }
            .navigationBarTitle("Nectar", displayMode: .inline)
        }
    }
}

struct ProductView: View {
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(product.imageName)
                .resizable()
                .frame(width: 100, height: 100)
                .scaledToFit()
                
            VStack(alignment: .leading) {
                Text(product.name)
                    .font(.system(size: 17, weight: .medium))
                    .lineLimit(1)
                Text(product.price)
                    .font(.system(size: 13))
            }
            
            Button(action: {
                // Add product to cart
            }) {
                Image(systemName: "plus.circle.fill")
                    .foregroundColor(.green)
            }
            .padding(.top, 5)
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(10)
    }
}

#Preview {
    HomeView2()
}
