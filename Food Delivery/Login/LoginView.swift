

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
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
                Text("Sign in")
                    .font(.system(size: 35))
                    .padding(.leading,-167)
                    .bold()
                    .padding(.top,50)
                
                
                Text("Enter your email and password")
                    .font(.system(size: 15))
                    .padding(.leading,-122)
                    .foregroundColor(.gray)
                Spacer()
                    .padding(.top)
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
                //                Button {
                //
                //                    } label: {
                //                        Text("Forgot Password?")
                //                            .font(.customfont(.medium, fontSize: 14))
                //                            .foregroundColor(.primaryText)
                //                                }
                //                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                //                            .padding()
                //                            .padding(.bottom, -40)
                //                Button{
                //                    loginVM.serviceCallLogin()
                //                } label: {
                //                    Text("Login")
                //                        .font(.customfont(.semibold, fontSize: 18))
                //                        .foregroundColor(.white)
                //                        .multilineTextAlignment(.center)
                //                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight : 60)
                //                }
                //            }
                Button {
                    
                    print("Forgot Password tapped")
                } label: {
                    Text("Forgot Password?")
                        .font(.custom("YourCustomFont", size: 14))
                        .foregroundColor(.primary)
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                .padding()
                .padding(.bottom, -40)
                
                Button {
                    loginVM.serviceCallLogin()
                } label: {
                    Text("Sign In")
                        .font(.custom("YourCustomFont", size: 18))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                        .background(Color.primaryApp)
                        .cornerRadius(20)
                        .padding(.top)
                }
                .padding()
                .padding(.bottom, 250)
            }
        }
    }
}
    
        #Preview {
            LoginView()
        }
    
//    struct LoginView_Previews: PreviewProvider {
//        static var previews: some View {
//            LoginView()
//        }
//    }

