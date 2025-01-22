//
//  LoginView.swift
//  Food Delivery
//
//  Created by student on 20/01/25.
//

import SwiftUI

struct LoginView: View {
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
               
                    
            }
        }
    }
}

#Preview {
    LoginView()
}
