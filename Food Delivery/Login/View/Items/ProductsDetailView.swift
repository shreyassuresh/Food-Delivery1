import SwiftUI

struct ProductsDetailView: View {
    var name: String
    var imageName: String
    var quantity: String
    var price: String
    var description: String
    var nutritionInfo: String
    var rating: Double

    @State private var selectedQuantity: Int = 1
    @State private var isHeartFilled: Bool = false // Track heart state (filled or empty)

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                // Product Image
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200)
                    .cornerRadius(10)

                // Product Name and Price
                VStack(alignment: .leading) {
                    Text(name)
                        .font(.largeTitle)
                        .fontWeight(.bold)

                    // Convert price from string to Double for calculation
                    let unitPrice = Double(price) ?? 0
                    let totalPrice = unitPrice * Double(selectedQuantity)

                    Text("₹ \(String(format: "%.2f", totalPrice))")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.primaryApp)

                    HStack {
                        Button(action: {
                            if selectedQuantity > 1 {
                                selectedQuantity -= 1
                            }
                        }) {
                            Image(systemName: "minus.circle.fill")
                                .foregroundColor(.green)
                        }

                        Text("\(selectedQuantity)")
                            .font(.title2)
                            .padding(.horizontal, 10)

                        Button(action: {
                            selectedQuantity += 1
                        }) {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(Color.primaryApp)
                        }
                    }
                    .padding(.vertical, 10)
                }

                // Heart Button (Reusable)
                HeartButton(isHeartFilled: $isHeartFilled)
                    .padding(.top, 10)

                // Product Details
                Text("Product Detail")
                    .font(.headline)
                    .padding(.top, 10)

                Text(description)
                    .font(.body)
                    .padding(.bottom, 10)

                // Nutrition Information
                HStack {
                    Text("Nutritions")
                        .font(.headline)
                    Spacer()
                    Text("300g")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.vertical, 5)

                Text(nutritionInfo)
                    .font(.body)
                    .padding(.bottom, 10)

                // Reviews
                HStack {
                    Text("Review")
                        .font(.headline)
                    Spacer()
                    HStack {
                        ForEach(0..<Int(rating), id: \.self) { _ in
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                        }
                    }
                }
                .padding(.vertical, 5)

                // Add to Basket Button
                Button(action: {
                    // Handle add to basket action
                }) {
                    Text("Add To Basket")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.primaryApp)
                        .cornerRadius(10)
                }
                .padding(.top, 20)
            }
            .padding()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ProductsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsDetailView(
            name: "Natural Red Apple",
            imageName: "apple",
            quantity: "3",
            price: "110",  // Price per item
            description: "Apples Are Nutritious. Apples May Be Good For Weight Loss. Apples May Be Good For Your Heart. As Part Of A Healthful And Varied Diet.",
            nutritionInfo: "Calories: 52, Fat: 0.2g, Carbs: 14g, Fiber: 2.4g",
            rating: 5
        )
    }
}
