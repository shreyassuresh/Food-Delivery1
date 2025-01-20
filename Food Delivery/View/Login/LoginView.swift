

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
            VStack{
                Text("Welcome to Nectar\nWhere Freshness Begins!")
                    .font(.customfont(.bold, fontSize: 30 ))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.primaryApp)
                    .padding(.top,-70)
                
                    Text("Connect with our social media ")
                    .padding(.top,30)
                    .foregroundColor(.gray)
                
                
                
            }
        }
    }
}

#Preview {
    LoginView()
}
