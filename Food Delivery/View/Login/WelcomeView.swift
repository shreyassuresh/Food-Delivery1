

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("welcom_bg")
                    .resizable()
                    .scaledToFill()
                    .frame(width: .screenWidth, height: .screenHeight)
                    .ignoresSafeArea()
                VStack{
                    Spacer()
                    Image("app_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70)
                        .padding(.bottom,5)
                    Text("Welcome\nto our store")
                        .font(.customfont(.bold, fontSize: 45))
                        
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                    Text("Groceries at your finger tips ")
                        .font(.customfont(.medium, fontSize: 25))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 50)
                    NavigationLink(destination: LoginView()){
                        Text("Start Shopping")
                            .font(.customfont(.semibold, fontSize: 19))
                            .foregroundStyle(.white)
                            .multilineTextAlignment(.center
                            )
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                            .background(Color.primaryApp)
                            .cornerRadius(19)
                        
                    }
                      Spacer()
                        .frame(height: 100)
                }
                .padding(.horizontal, 19)
            }
            
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

#Preview {
    WelcomeView()
}
