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
        HStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 75, height: 75)
                .cornerRadius(10)
                .padding(.leading)
            
            Text(title)
                .font(.headline)
                .padding(.top, 5)
        }
        .padding(.trailing,150)
        .background(LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.1), Color.green.opacity(0.1)]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(10)
        .shadow(radius: 5)
        
    }}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(title: "Pulses", imageName: "pulses")
    }
}
