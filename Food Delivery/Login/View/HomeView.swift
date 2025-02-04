
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
                            .padding(.leading,3)
                    }
                    
                }
                .foregroundColor(Color.gray)
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
    

