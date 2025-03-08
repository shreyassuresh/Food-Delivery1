import SwiftUI

struct ProductDetailView: View {
    var name: String
    var imageName: String
    var quantity: String
    var price: String
    @State private var isHeartFilled: Bool = false
    
    
    
    


    var body: some View {
        VStack(alignment: .leading) {
            // Image Section
            HStack{
                Button(action: {
                    // Handle add to cart action
                }) { Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100,height: 100)
                        .cornerRadius(10)
                }
                HeartButton(isHeartFilled: $isHeartFilled)
                    .padding(.top, -50)
            }

            // Product Details Section
            VStack(alignment: .leading, spacing: 5) {
                Text(name)
                    .font(.headline)
                    .fontWeight(.bold)

                Text("\(quantity), \(price)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.top, -10)

            Spacer()

            // Price and Add Button Section
            HStack {
                Text("₹ \(price)")
                    .font(.title2)
                    .fontWeight(.bold)

                Spacer()

                Button(action: {
                    // Handle add to cart action
                }) {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.green)
                }
            }
            .padding(.top, -1)
        }
        .padding()
        .background(Color(UIColor.systemBackground))
        .cornerRadius(15)
        .shadow(radius: 5)
        .frame(width: 170, height: 15)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(name: "Organic Bananas", imageName: "banana", quantity: "7pcs", price: "90")
       
    }
}
