

import SwiftUI

struct SignInView: View {
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
                    .padding(.top,150)
                
                    Text("Connect with our social media ")
                    .padding(.top,80)
                    .foregroundColor(.gray)
                NavigationLink{
                    LoginView()
                    
                } label:{
                Text("Continue with SignIn")
                        .font(.customfont(.semibold, fontSize: 20))
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                        .frame(minWidth:0, maxWidth: .infinity, minHeight: 60,maxHeight: 60)
                        .background(Color(hex:"5383EC"))
                        .cornerRadius(20)
                }
                .padding(.horizontal,20)
                .padding(.bottom, 5)
                
                NavigationLink{
                    SignUpView()
                    
                }label: {
                    Text("Continue with SignUp")
                        .font(.customfont(.semibold, fontSize: 20))
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                        .frame(minWidth:0, maxWidth: .infinity, minHeight: 60,maxHeight: 60)
                        .background(Color.primaryApp)
                        .cornerRadius(20)
                }
                .padding(.horizontal,20)
                .padding(.bottom, 10)
                
                HStack{
                    Image("google")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40,
                               height:40)
                        .padding(.trailing,5)
                    Image("facebook")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40,
                               height:40)
                                                
                    Image("apple_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40,
                               height:40)
                                                
                }
            }
        }
    }
}

#Preview {
    SignInView()
}
