import SwiftUI

struct Category: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
}

struct ExploreView: View {
    let categories = [
        Category(imageName: "frash_fruits", title: "Fresh Fruits & Vegetable"),
        Category(imageName: "cooking_oil", title: "Cooking Oil & Ghee"),
        Category(imageName: "meat_fish", title: "Meat & Fish"),
        Category(imageName: "bakery_snacks", title: "Bakery & Snacks"),
        Category(imageName: "dairy_eggs", title: "Dairy & Eggs"),
        Category(imageName: "beverages", title: "Beverages")
    ]
    
    var body: some View {
        VStack {
            headerView
            categoriesGrid
        }
    }

    private var headerView: some View {
        VStack {
            Text("Find Products")
                .font(.largeTitle)
                .padding()

            TextField("Search Store", text: .constant(""))
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
        }
    }

    private var categoriesGrid: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                ForEach(categories) { category in
                    CategoryView(category: category)
                }
            }
            .padding()
        }
    }
}

struct CategoryView: View {
    let category: Category

    var body: some View {
        VStack {
            Image(category.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .cornerRadius(10)

            Text(category.title)
                .font(.headline)
                .padding(.top, 5)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}

