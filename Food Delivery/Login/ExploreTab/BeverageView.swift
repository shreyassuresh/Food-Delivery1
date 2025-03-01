import SwiftUI

struct Beverage: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let volume: String
    let price: String
}

struct BeverageView: View {
    let beverages = [
        Beverage(name: "Diet Coke", imageName: "diet_coke", volume: "355ml", price: "$1.99"),
        Beverage(name: "Sprite Can", imageName: "sprite_can", volume: "325ml", price: "$1.50"),
        Beverage(name: "Apple & Grape Juice", imageName: "juice_apple_grape", volume: "2L", price: "$15.99"),
        Beverage(name: "Orange Juice", imageName: "orenge_juice", volume: "2L", price: "$15.99"),
        Beverage(name: "Coca Cola Can", imageName: "cocacola_can", volume: "355ml", price: "$4.99"),
        Beverage(name: "Pepsi Can", imageName: "pepsi_can", volume: "355ml", price: "$4.99")
    ]

    var body: some View {
        NavigationView {
            List(beverages) { beverage in
                BeverageRow(beverage: beverage)
            }
            .navigationTitle("Beverages")
        }
    }
}

struct BeverageRow: View {
    let beverage: Beverage

    var body: some View {
        HStack {
            Image(beverage.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 80)
                .cornerRadius(8)

            VStack(alignment: .leading) {
                Text(beverage.name)
                    .font(.headline)
                Text("\(beverage.volume), \(beverage.price)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.leading, 8)

            Spacer()

            Button(action: {
                // Add to cart action
            }) {
                Image(systemName: "plus.circle.fill")
                    .foregroundColor(.green)
                    .imageScale(.large)
            }
            .padding(.trailing, 8)
        }
        .padding(.vertical, 4)
    }
}

struct BeverageView_Previews: PreviewProvider {
    static var previews: some View {
        BeverageView()
    }
}
