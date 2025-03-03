

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @ObservedObject var loginVM = MainViewModel()  // Initialize ViewModel
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    // Use simple @State variables for showcasing the UI
    @State private var txtEmail: String = ""
    @State private var txtPassword: String = ""
    @State private var isShowPassword: Bool = false//true
    @State private var showError: Bool = false
    @State private var errorMessage: String = "Invalid email or password."
    
    
    
    
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
                LineTextField(title: "Email", placholder: "Enter your email address", txt: $txtEmail, keyboardType: .emailAddress)
                                    .padding(.bottom, 30)
                                    .padding(.horizontal,20)
                
                                
                                // SecureField for Password
                                LineSecureField(title: "Password", placholder: "Enter your password", txt: $txtPassword, isShowPassword: $isShowPassword)
                                    .padding(.bottom, 10)
                                    .padding(.horizontal,20)
//                Text("Email")
//                    .font(.system(size: 15))
//                    .padding(.leading,-167)
//                    .foregroundColor(.gray)
//                TextField("Enter your email ",text: $email)
//                
//                    .padding(.leading,30)
//                    .padding(.top,2)
//                Rectangle()
//                    .frame(height: 1)
//                    .foregroundColor(.gray.opacity(0.3))
//                    .padding(.horizontal, 30)
//                    .padding(.bottom)
//                Text("Password")
//                    .font(.system(size: 15))
//                    .padding(.leading,-167)
//                    .foregroundColor(.gray)
//                SecureField("Enter your password", text: $password)
//                    .padding(.leading,30)
//                Rectangle()
//                    .frame(height: 1)
//                    .foregroundColor(.gray.opacity(0.3))
//                    .padding(.horizontal, 30)
//                    .padding(.bottom)
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
                
                NavigationLink(destination: MainTabView()){
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
                .padding(.bottom, 220)
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
                                    
//                .alert(isPresented: $mainVM.showError, content: {
//                    Alert(
//                        title: Text(Globs.AppName),
//                        message: Text(mainVM.errorMessage), // Remove the `$` here to use the actual String value
//                        dismissButton: .default(Text("Ok"))
//                    )
//                })
            }
            .padding(.top,500)
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

