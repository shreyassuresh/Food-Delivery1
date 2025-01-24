
import SwiftUI

struct SignUpView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var username: String = ""
    @ObservedObject var loginVM = LoginViewModel()  // Initialize ViewModel
    
    
    
    
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
                Text("Sign Up")
                    .font(.system(size: 35))
                    .padding(.leading,-167)
                    .bold()
                    .padding(.top,50)
                
                
                Text("Enter your credentials to continue")
                    .font(.system(size: 15))
                    .padding(.leading,-100)
                    .foregroundColor(.gray)
                Spacer()
                    .padding(.top)
                Text("Username")
                    .font(.system(size: 15))
                    .padding(.leading,-167)
                    .foregroundColor(.gray)
                TextField("Enter your username ",text: $username)
                
                    .padding(.leading,48)
                    .padding(.top,2)
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray.opacity(0.3))
                    .padding(.horizontal, 30)
                    .padding(.bottom)
                Text("Email")
                    .font(.system(size: 15))
                    .padding(.leading,-167)
                    .foregroundColor(.gray)
                TextField("Enter your email ",text: $email)
                
                    .padding(.leading,48)
                    .padding(.top,2)
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray.opacity(0.3))
                    .padding(.horizontal, 30)
                    .padding(.bottom)
                Text("Password")
                    .font(.system(size: 15))
                    .padding(.leading,-167)
                    .foregroundColor(.gray)
                SecureField("Enter your password", text: $password)
                    .padding(.leading,48)
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray.opacity(0.3))
                    .padding(.horizontal, 30)
                    .padding(.bottom)
                
                VStack(alignment: .leading) {
                                        HStack {
                                            Text("By continuing you agree to our")
                                                .font(.customfont(.medium, fontSize: 14))
                                                .foregroundColor(.secondaryText)
                                                .padding(.top, 5)
                                            Text("Terms of service")
                                                .font(.customfont(.medium, fontSize: 14))
                                                .foregroundColor(.primaryApp)
                                                .padding(.top, 5)
                                                .padding(.leading, -3)
                                        }
                                        
                                        HStack{
                                            Text("and")
                                                .font(.customfont(.medium, fontSize: 14))
                                                .foregroundColor(.secondaryText)
                                                .padding(.top, 1)
                                            
                                            Text("Privacy Policy.")
                                                .font(.customfont(.medium, fontSize: 14))
                                                .foregroundColor(.primaryApp)
                                                .padding(.top, 1)
                                                .padding(.leading, -3)
                                        }
                                        
                                    }
                
                Button {
                    loginVM.serviceCallLogin()
                } label: {
                    Text("Login")
                        .font(.custom("YourCustomFont", size: 18))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                        .background(Color.primaryApp)
                        .cornerRadius(20)
                        .padding(.top)
                    
                }
                .padding()
                .padding(.bottom, 200)
            }
            HStack{
                                    Text("Already have an account?")
                                        .font(.customfont(.semibold, fontSize: 16))
                                        .foregroundColor(.primaryText)
                                    
                                    NavigationLink {
                                        LoginView()
                                    } label: {
                                        Text("Sign In")
                                            .font(.customfont(.semibold, fontSize: 16))
                                            .foregroundColor(.primaryApp)
                                    }
                                    
                                }
            .padding(.top,500)
        }
    }
}
    
        #Preview {
            SignUpView()
        }
    
//    struct LoginView_Previews: PreviewProvider {
//        static var previews: some View {
//            LoginView()
//        }
//    }

