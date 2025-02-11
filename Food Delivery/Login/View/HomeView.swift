
import SwiftUI

struct HomeView: View {
    @State private var searchQuery: String = ""
    var body: some View {
        ZStack{
            ScrollView{
                VStack{
                    Image("color_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                    HStack{
                        Image("location")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20,height: 30)
                        Text("Vadodara, India")
                        
                        
                        
                    }
                    HStack{
                        Image("search")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 18,height:30)
                            .padding(.leading,30)
                        TextField("Search here...", text: $searchQuery)
                            .padding(.leading,7)
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(7)
                            .frame(height: 45)
                            .padding(.leading, 3)
                            .padding(.trailing, 30)
                    }
                    Image("banner_top")
                        .resizable()
                        .scaledToFit()
                        .frame(width:350)
                    Spacer()
                    Spacer()
                    HStack{
                        Text("Exclusive Offer")
                            .font(.system(size: 23, weight: .semibold))
                        
                        Text("See all")
                            .foregroundColor(.green)
                            .padding(.leading,140)
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        
                        HStack{
                            VStack{
                                
                                
                                Image("banana")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                    .overlay(
                                        Rectangle()
                                            .fill(Color.black.opacity(0.1)) // Semi-transparent rectangle
                                            .frame(width: 110, height: 190)
                                            .cornerRadius(10)
                                    )
                                
                                VStack(alignment: .leading){
                                    Text("Banana")
                                        .font(.system(size: 17, weight: .medium))
                                    Text("Rs. 99")
                                        .font(.system(size: 13))
                                }}
                            .padding()
                            VStack{ Image("apple_red")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                    .overlay(
                                        Rectangle()
                                            .fill(Color.black.opacity(0.1)) // Semi-transparent rectangle
                                            .frame(width: 110, height: 190)
                                            .cornerRadius(10)
                                    )
                                
                                
                                VStack(alignment: .leading){
                                    Text("Apple Red")
                                        .font(.system(size: 17, weight: .medium))
                                    Text("Rs. 169")
                                        .font(.system(size: 13))
                                }
                                
                                
                            }}
                        //testing
                    }
                    Spacer()
                    Spacer()
                    Spacer()
                    HStack{
                        
                        Text("Best Selling")
                            .font(.system(size: 23, weight: .semibold))
                            .padding(.trailing, 60)
                        
                        Text("See all")
                            .foregroundColor(.green)
                            .padding(.leading,119)
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        
                        HStack{
                            VStack{
                                Image("bell_pepper_red")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                    .overlay(
                                        Rectangle()
                                            .fill(Color.black.opacity(0.1)) // Semi-transparent rectangle
                                            .frame(width: 150, height: 200)
                                            .cornerRadius(10)
                                    )
                                HStack{
                                    VStack(alignment: .leading){
                                        Text("Bell Pepper\n- Red")
                                            .font(.system(size: 17, weight: .medium))
                                        Text("Rs. 69")
                                            .font(.system(size: 13))
                                    }
                                    Image("add_green")
                                                                    .resizable()
                                                                    .scaledToFit()
                                                                    .frame(width: 20, height: 20)
                                                                    .overlay(
                                                                        Rectangle()
                                                                            .fill(Color.black.opacity(0.1)) // Semi-transparent rectangle
                                                                            .frame(width: 30, height: 30)
                                                                            .cornerRadius(10)
                                                                    )
                                    }}
                            Spacer()
                            Spacer()
                            Spacer()
                            Spacer()
                            Spacer()
                            Spacer()
                            VStack{
                                Image("ginger")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                    .overlay(
                                        Rectangle()
                                            .fill(Color.black.opacity(0.1)) // Semi-transparent rectangle
                                            .frame(width: 150, height: 200)
                                            .cornerRadius(10)
                                    )
                                
                                
                                HStack{ VStack(alignment: .leading){
                                    Text("Ginger")
                                        .font(.system(size: 17, weight: .medium))
                                    Text("Rs. 169")
                                        .font(.system(size: 13))
                                }
                                    Image("add_green")
                                                                    .resizable()
                                                                    .scaledToFit()
                                                                    .frame(width: 20, height: 20)
                                                                    .overlay(
                                                                        Rectangle()
                                                                            .fill(Color.black.opacity(0.1)) // Semi-transparent rectangle
                                                                            .frame(width: 30, height: 30)
                                                                            .cornerRadius(10)
                                                                    )
                                }}
                                
                                //testing
                            }
                    }
                    Spacer()
                    Spacer()
                    HStack{
                        Text("Groceries")
                            .font(.system(size: 23, weight: .semibold))
                            .padding(.trailing,70)
                        
                        Text("See all")
                            .foregroundColor(.green)
                            .padding(.leading,130)
                    }                                //testing
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack{
                            Image("pulses")
                                .resizable()
                                .frame(width: 60, height: 60)
                            VStack(alignment: .leading){
                                Text("Pulses")
                                    .font(.system(size: 17, weight: .medium))
                                    .overlay(
                                        Rectangle()
                                            .fill(Color.pink.opacity(0.1)) // Semi-transparent rectangle
                                            .frame(width: 230, height: 110)
                                            .cornerRadius(20))
                                
                                
                            }
                            Image("rice")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                                .padding(.leading,130)
                            VStack(alignment: .leading){
                                Text("Rice")
                                    .font(.system(size: 17, weight: .medium))
                                    .overlay(
                                        Rectangle()
                                            .fill(Color.green.opacity(0.1)) // Semi-transparent rectangle
                                            .frame(width: 230, height: 110)
                                            .cornerRadius(20))
                                
                            }
                            
                        }
                        
                        
                    }
                    //                    .padding(.top, 20)
                    //                    .padding(.horizontal, 15)
                }
                //                .foregroundColor(Color.gray)
            }
        }
    }
}

        #Preview {
            HomeView()
//    struct HomeView_Previews: PreviewProvider {
//        static var previews: some View {
//            HomeView()
        }
    

