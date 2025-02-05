
import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView{
            VStack{
                Image("color_logo")
                    .resizable()
                    .ignoresSafeArea()
                    .frame(width:25, height: 30)
                    .padding(.bottom, 3)
                
                HStack{
                    Image("location")
                        .resizable()
                        .ignoresSafeArea()
                        .frame(width: 15, height: 17)
                    
                    Text("Vadodara, Gujarat")
                        .font(.customfont(.semibold, fontSize: 15))
                        .foregroundColor(.darkGray)
                }
                
                SearchTextField(searchText: .constant(""), placeholder: "Search products")
                    .padding()
                
                Image("banner_top")
                    .resizable()
                    .ignoresSafeArea()
                    .frame(width: .infinity, height: 110)
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom, 8)
                
                HStack{
                    Text("Exclusive Offer")
                        .font(.customfont(.semibold, fontSize: 19))
                        .foregroundColor(.primaryText)
                        .padding(.leading)
                    Spacer()
                    
                    Button(action: {}){
                        Text("See All")
                            .padding()
                            .foregroundColor(.primaryApp)
                            .font(.customfont(.semibold, fontSize: 14))
                            .padding(.leading)
                    }
                }
                
                HStack{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black.opacity(0.2), lineWidth:0.8)
                        .frame(height: 200)
                        .padding(.leading)
                        .overlay(
                        
                            VStack{
                                Image("banana")
                                    .resizable()
                                    .ignoresSafeArea()
                                    .frame(width: 110, height: 90)
                                
                                Text("Organic Bananas")
                                    .font(.customfont(.semibold, fontSize: 16))
                                    .foregroundColor(.primaryText)
                                    .padding(.leading)
                                
                                Text("7pcs, Priceg")
                                    .font(.customfont(.semibold, fontSize:10))
                                    .foregroundColor(.primaryText)
                                    
                                
                            }
                        )
                    
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black.opacity(0.2), lineWidth:0.8)
                        .frame(height: 100)
                        .overlay(
                        
                            VStack{
                                Image("apple")
                                    .resizable()
                                    .ignoresSafeArea()
                                
                            }
                        )
                        
                    
                }
                
            }
        }
    }
}

#Preview {
    HomeView()
}
