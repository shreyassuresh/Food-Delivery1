//
//  HomeView.swift
//  Food Delivery
//
//  Created by student on 01/02/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack{
            ScrollView{
                VStack{
                    Image("color_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                }
            }
        }
    }
    
    //    #Preview {
    //        HomeView()
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
}
