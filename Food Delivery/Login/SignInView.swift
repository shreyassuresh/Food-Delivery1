

import SwiftUI
import iPhoneNumberField

struct SignInView: View {
    @Environment(\.dismiss) private var dismiss
        @Environment(\.presentationMode) var presentationMode
        @State private var phoneNumber = ""
        @State private var selectedCountry = Country.india
        @State private var showCountryPicker = false
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
                    .padding(.top,-20)
                HStack(spacing: 12){
                    Button(action:{
                        showCountryPicker = true
                    }){
                        HStack(spacing: 4){
                            Text(selectedCountry.flag)
                                .font(.system(size:22))
                            Text(selectedCountry.dialCode)
                                .font(.system(size:22))
                                .foregroundColor(.black)
                        }
                        .frame(width: 100)
                        .padding(.leading, -20)
                    }
                    .sheet(isPresented: $showCountryPicker){
                        NavigationView{
                            CountryPickerView(selectedCountry: $selectedCountry)
                                .navigationTitle("Select Country")
                                .navigationBarTitleDisplayMode(.inline)
                        }
                    }
                    iPhoneNumberField("Enter phone number", text: $phoneNumber)
                                                .flagHidden(true)
                                                .flagSelectable(false)
                                                .formatted(true)
                                                .font(UIFont(size: 16, weight: .regular))
                                        }
                                        .padding(.horizontal, 24)
                                        .padding(.top,30)
                                        
                                        Rectangle()
                                            .frame(height: 1)
                                            .foregroundColor(.gray.opacity(0.3))
                                            .padding(.horizontal, 30)
                                            .padding(.bottom)
                                        
                }

                    Text(" Or connect with our social media ")
                    .padding(.top,500)
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
                .padding(.top, 230)
                
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
                .padding(.top,370 )
                
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
                .padding(.top,600)
            }
        }
    }


#Preview {
    SignInView()
}

