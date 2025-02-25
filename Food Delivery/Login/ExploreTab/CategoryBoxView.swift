import SwiftUI

struct CategoryBoxView: View {
    let imageName: String
    let title: String
    let backgroundColor: Color

    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .cornerRadius(10)

            Text(title)
                .font(.headline)
                .padding(.top, 5)
        }
        .padding()
        .background(backgroundColor)
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}

struct CategoryBoxView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryBoxView(imageName: "frash_fruits", title: "Fresh Fruits & Vegetable", backgroundColor: .green.opacity(0.2))
    }
}
