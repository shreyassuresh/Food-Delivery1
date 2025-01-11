//
//  ContentView.swift
//  Food Delivery
//
//  Created by student on 10/01/25.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image("welcom_bg")
                .resizable()
                .scaledToFill()
            VStack{
                Image("app_logo")
                    .resizable()
                    .frame(width: 70, height: 70)
                Text("Welcome\n to our store")
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 30, weight: .bold))
                    Text("Groceries at your Fingertips")
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 20, weight: .semibold))
                Button(action:{
                    print("Start Shopping clicked!")
                }){
                    Text("Start Shopping")
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .semibold))
                        .padding()
                        .frame(maxWidth: .infinity)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                        .padding(.horizontal, 30)
                        .background(Color.green)
                    
                }
                .padding(.bottom,40)
                    
                    
            }
            .padding(.top,170)

        }
        .ignoresSafeArea()
    }
}

#Preview {
    WelcomeView()
}
