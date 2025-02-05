
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
                    HStack{
                        Text("Exclusive Offer")
                        .font(.system(size: 23, weight: .semibold))

                        Text("See all")
                            .foregroundColor(.green)
                            .padding(.leading,140)
                    }
                  
                    HStack{
                        Image("banana")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                        VStack(alignment: .leading){
                            Text("Banana")
                                .font(.system(size: 17, weight: .medium))
                            Text("Rs. 99")
                                .font(.system(size: 13))
                                              }
                        Image("apple_red")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                        VStack(alignment: .leading){
                            Text("Apple Red")
                                .font(.system(size: 17, weight: .medium))
                            Text("Rs. 169")
                                .font(.system(size: 13))
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
    

