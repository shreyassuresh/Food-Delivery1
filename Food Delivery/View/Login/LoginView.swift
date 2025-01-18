

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack{
            Image("sign_in_top")
                .resizable()
                .scaledToFit()
                .frame(width:.screenWidth, height: .screenHeight)
                .ignoresSafeArea()
                .padding(.bottom,530)
        }
    }
}

#Preview {
    LoginView()
}
