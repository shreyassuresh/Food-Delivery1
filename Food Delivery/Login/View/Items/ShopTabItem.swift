import SwiftUI

struct ShopTabItem: View {
    let isSelected: Bool
    let onTap: () -> Void

    var body: some View {
        VStack {
            Image("store_tab")
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .foregroundColor(isSelected ? .green : .black)
            Text("Shop")
                .font(.system(size: 10))
                .foregroundColor(isSelected ? .green : .black)
        }
        .padding(.horizontal, 20)
        .onTapGesture {
            onTap()
        }
    }
}
   
