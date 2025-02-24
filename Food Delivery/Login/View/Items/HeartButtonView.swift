import SwiftUI

// Reusable Heart Button Component
struct HeartButton: View {
    @Binding var isHeartFilled: Bool // Binding state to track whether the heart is filled or not
    
    
    var body: some View {
        Button(action: {
            // Toggle the heart state when clicked
            isHeartFilled.toggle()
        }) {
            // Change the heart color based on its state
            Image(systemName: isHeartFilled ? "heart.fill" : "heart")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .foregroundColor(isHeartFilled ? .red : .gray)
        }
    }
}
#Preview {
    HeartButton(isHeartFilled: .constant(true))
}
