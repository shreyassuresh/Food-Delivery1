import SwiftUI

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let price: String
}

struct HomeView2: View {
    @State private var searchQuery: String = ""
    @State private var selectedTab: Tab = .shop

    let products = [
        Product(name: "Organic Bananas", imageName: "banana", price: "100 Rs"),
        Product(name: "Red Apple", imageName: "apple_red", price: "120 Rs"),
        Product(name: "Bell Pepper", imageName: "bell_pepper_red", price: "100 Rs"),
        Product(name: "Ginger", imageName: "ginger", price: "120 Rs"),
        Product(name: "Beef Bone", imageName: "beef_bone", price: "200 Rs"),
        Product(name: "Broiler Chicken", imageName: "broiler_chicken", price: "180 Rs")
    ]

    var body: some View {
        TabView(selection: $selectedTab) {
            // Shop Tab
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
                                ForEach(products.suffix(4).prefix(2)) { product in
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
                                    .padding(.leading, 108)
                            }
                            .padding(.horizontal)

                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    // Pulses
                                    VStack {
                                        Image("pulses")
                                            .resizable()
                                            .frame(width: 60, height: 60)
                                        Text("Pulses")
                                            .font(.system(size: 17, weight: .medium))
                                    }
                                    .padding()

                                    // Rice
                                    VStack {
                                        Image("rice")
                                            .resizable()
                                            .frame(width: 60, height: 60)
                                        Text("Rice")
                                            .font(.system(size: 17, weight: .medium))
                                    }
                                    .padding()

                                    // Beef Bone
                                    ProductView(product: products[4])

                                    // Broiler Chicken
                                    ProductView(product: products[5])
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
            .tag(Tab.shop)
            .tabItem {
                Image(systemName: "house")
                Text("Shop")
            }

            // Explore Tab
            Text("Explore Content")
                .tag(Tab.explore)
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Explore")
                }

            // Cart Tab
            Text("Cart Content")
                .tag(Tab.cart)
                .tabItem {
                    Image(systemName: "cart")
                    Text("Cart")
                }

            // Favorite Tab
            Text("Favorite Content")
                .tag(Tab.favorite)
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favorite")
                }

            // Account Tab
            Text("Account Content")
                .tag(Tab.account)
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
        }
    }
}

enum Tab {
    case shop
    case explore
    case cart
    case favorite
    case account
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
