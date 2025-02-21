//
//  GroceriesItemView.swift
//  Food Delivery
//
//  Created by student on 21/02/25.
//

//import SwiftUI
//
//struct GroceriesItemView: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//#Preview {
//    GroceriesItemView()
//}
import SwiftUI

struct ItemView: View {
    var title: String
    var imageName: String

    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .cornerRadius(10)

            Text(title)
                .font(.headline)
                .padding(.top, 5)
        }
        .padding()
        .background(Color(UIColor.systemBackground))
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(title: "Pulses", imageName: "pulses")
    }
}
