import SwiftUI

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let price: String
    let description: String
    let nutritionInfo: String
    let rating: Double
}
struct HomeView2: View {
    @State private var searchQuery: String = ""
    
    var body: some View {
        VStack {
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
                                ProductDetailView(name: "Organic Bananas", imageName: "banana", quantity: "7pcs", price: "90")
                                
                                NavigationLink(destination: ProductsDetailView(
                                    name: "Natural Red Apple",
                                    imageName: "apple",
                                    quantity: "3",
                                    price: "110",  // Price per item
                                    description: "Apples Are Nutritious. Apples May Be Good For Weight Loss. Apples May Be Good For Your Heart. As Part Of A Healthful And Varied Diet.",
                                    nutritionInfo: "Calories: 52, Fat: 0.2g, Carbs: 14g, Fiber: 2.4g",
                                    rating: 5
                                )) {
                                    ProductDetailView(name: "Red Apple", imageName: "apple_red", quantity: "3pcs", price: "110")
                                }
                                ProductDetailView(name: "Bell Pepper Red", imageName: "bell_pepper_red", quantity: "1kg", price: "50")
                                
                                NavigationLink(destination: ProductsDetailView(
                                    name: "Ginger",
                                    imageName: "ginger",
                                    quantity: "3",
                                    price: "50",  // Price per item
                                    description: "Ginger Is Nutrient-Rich. Ginger May Help With Digestion. Ginger May Have Anti-Inflammatory Properties. As Part Of A Healthy And Balanced Diet.",
                                    nutritionInfo: "Calories: 52, Fat: 0.2g, Carbs: 14g, Fiber: 2.4g",
                                    rating: 5
                                )) {ProductDetailView(name: "Ginger", imageName: "ginger", quantity: "250gm", price: "30")}
                                    .padding()
                                    .frame(height:250)
                                
                                Spacer()
                            }
                            .padding(.horizontal)
                        }
                        
                
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
                                ProductDetailView(name: "Bell Pepper Red", imageName: "bell_pepper_red", quantity: "1kg", price: "50")
                                ProductDetailView(name: "Ginger", imageName: "ginger", quantity: "250gm", price: "30")
                                    .padding()
                                    .frame(height:250)
                                
                                Spacer()
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
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 15) {
                                ItemView(title: "Pulses", imageName: "pulses")
                                ItemView(title: "Rice", imageName: "rice")
                            }
                            .padding(10)
                        }
                        .cornerRadius(20)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            VStack {
                                HStack {
                                    ProductDetailView(name: "Beef Bone", imageName: "beef_bone", quantity: "1kg", price: "400")
                                    ProductDetailView(name: "Broiler Chicken", imageName: "broiler_chicken", quantity: "1kg", price: "200")
                                        .padding()
                                        .frame(height:250)
                                    
                                    Spacer()
                                }
                                .padding(.horizontal)
                            }
                        }
                    }
                }
            }
        }
    }
}


struct HomeView2_Previews: PreviewProvider {
    static var previews: some View {
        HomeView2()
    }
}
