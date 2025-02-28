//import SwiftUI
//
//struct CategoryBoxView: View {
//    let imageName: String
//    let title: String
//    let backgroundColor: Color
//
//    var body: some View {
//        VStack {
//            Image(imageName)
//                .resizable()
//                .scaledToFit()
//                .frame(height: 100)
//                .cornerRadius(10)
//
//            Text(title)
//                .font(.headline)
//                .padding(.top, 5)
//        }
//        .padding()
//        .background(backgroundColor)
//        .cornerRadius(15)
//        .shadow(radius: 5)
//    }
//}
//
//struct CategoryBoxView_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoryBoxView(imageName: "frash_fruits", title: "Fresh Fruits \n& Vegetable", backgroundColor: .green.opacity(0.2))
//    }
//}
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
                .frame(width: 120, height: 120)  // Ensuring the image is fixed size
                .cornerRadius(10)

            Text(title)
                .font(.headline)
                .multilineTextAlignment(.center) // To handle multi-line text properly
                .padding(.top, 5)
        }
        .frame(width: 175, height: 200)  // Fixed size for the category box
        .background(backgroundColor)
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}

struct CategoryBoxView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryBoxView(imageName: "frash_fruits", title: "Fresh Fruits \n& Vegetable", backgroundColor: .green.opacity(0.2))
    }
}
