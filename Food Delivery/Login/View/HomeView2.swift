import SwiftUI

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let price: String
}

enum Tab {
    case shop
    case explore
    case cart
    case favorite
    case account
}

struct HomeView2: View {
    @State private var searchQuery: String = ""
    @State private var selectedTab: Tab = .shop
    
    let products = [
        Product(name: "Bananas", imageName: "banana", price: "100 Rs"),
        Product(name: "Red Apple", imageName: "apple_red", price: "120 Rs"),
        Product(name: "Bell Pepper", imageName: "bell_pepper_red", price: "100 Rs"),
        Product(name: "Ginger", imageName: "ginger", price: "120 Rs"),
        Product(name: "Beef Bone", imageName: "beef_bone", price: "200 Rs"),
        Product(name: "Broiler Chicken", imageName: "broiler_chicken", price: "180 Rs")
    ]
    
    var body: some View {
        VStack {
            // Main content area based on selectedTab
            switch selectedTab {
            case .shop:
                shopTabContent
            case .explore:
                Text("Explore Content")
            case .cart:
                Text("Cart Content")
            case .favorite:
                Text("Favorite Content")
            case .account:
                Text("Account Content")
            }
            
            // Custom Tab Bar
            CustomTabBarView(selectedTab: $selectedTab)
                .background(Color.white)
        }
    }
    
    var shopTabContent: some View {
        NavigationView {
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
                .padding(.top, -5)

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
                        .cornerRadius(10)
                        .frame(height: 10)
                        .padding(.leading, 3)
                        .padding(.trailing, 30)
                }
            ScrollView {
                

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
                            ForEach(products.prefix(4)) { product in
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
                            ForEach(products.suffix(4).prefix(4)) { product in
                                ProductView(product: product)
                            }
                        }
                        .padding(.horizontal)
                    }

                    // Groceries Section with Cool Background
                    
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
                VStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                // Pulses
                                HStack {
                                    Image("pulses")
                                        .resizable()
                                        .frame(width: 60, height: 60)
                                    Text("Pulses")
                                        .font(.system(size: 17, weight: .medium))
                                }
                                .padding()

                                // Rice
                                HStack {
                                    Image("rice")
                                        .resizable()
                                        .frame(width: 60, height: 60)
                                    Text("Rice")
                                        .font(.system(size: 17, weight: .medium))
                                }
                                .padding()
                               
                               
                            }
                            
                        }
                       
                    }
               
                    .padding()
                    .background(LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.1), Color.green.opacity(0.1)]), startPoint: .top, endPoint: .bottom))
                    .cornerRadius(20)
                    .shadow(radius: 5)
                ScrollView(.horizontal, showsIndicators: false) {
                    VStack {
                        HStack
                        {
                            // Beef Bone
                            ProductView(product: products[4])
                            
                            // Broiler Chicken
                            ProductView(product: products[5])
                        }
                        
                    }
                }
                }
               
            }
           
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
        .background(LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.1), Color.green.opacity(0.1)]), startPoint: .top, endPoint: .bottom))
        
        .cornerRadius(10)
    }
}

struct CustomTabBarView: View {
    @Binding var selectedTab: Tab

    var body: some View {
        HStack {
            
            TabBarItem(imageName: "store_tab", title: "Shop", isSelected: selectedTab == .shop)
                .onTapGesture {
                    selectedTab = .shop
                }
            TabBarItem(imageName: "explore_tab", title: "Explore", isSelected: selectedTab == .explore)
                .onTapGesture {
                    selectedTab = .explore
                }
            TabBarItem(imageName: "cart_tab", title: "Cart", isSelected: selectedTab == .cart)
                .onTapGesture {
                    selectedTab = .cart
                }
            TabBarItem(imageName: "fav_tab", title: "Favorite", isSelected: selectedTab == .favorite)
                .onTapGesture {
                    selectedTab = .favorite
                }
            TabBarItem(imageName: "account_tab", title: "Account", isSelected: selectedTab == .account)
                .onTapGesture {
                    selectedTab = .account
                }
        }
        .padding(.vertical, 8)
        .background(Color.white)
        .shadow(radius: 5)
    }
}

struct TabBarItem: View {
    let imageName: String
    let title: String
    let isSelected: Bool

    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .foregroundColor(isSelected ? .blue : .gray)
            Text(title)
                .font(.system(size: 10))
                .foregroundColor(isSelected ? .blue : .gray)
        }
        .padding(.horizontal, 20)
    }
}

struct HomeView2_Previews: PreviewProvider {
    static var previews: some View {
        HomeView2()
    }
}
