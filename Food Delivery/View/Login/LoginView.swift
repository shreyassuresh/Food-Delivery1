

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    
       
    
    var body: some View {
        ZStack{
            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .frame(width:.screenWidth, height: .screenHeight)
                
            VStack{
                Image("color_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 55, height: 55)
                    .padding(.top,60)
                Spacer()
                Text("Sign in")
                    .font(.system(size: 35))
                    .padding(.leading,-150)
                    .bold()
                    .padding(.top,50)
                    
                Text("Enter your email and password")
                    .font(.system(size: 20))
                    
                    .padding(.leading,-30)
                    .foregroundColor(.gray)
                TextField("Enter your email ",text: $email)
                    
                    .padding(.leading,48)
                    .padding(.top,30)
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray.opacity(0.3))
                    .padding(.horizontal, 30)
                    .padding(.bottom)
                TextField("Enter your password", text: $email)
                    .padding(.leading,48)
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray.opacity(0.3))
                    .padding(.horizontal, 30)
                    .padding(.bottom)
                
                
                    
                
                
 
             
            }
            .padding(.bottom, 550)
        }
    }
}

#Preview {
    LoginView()
}
