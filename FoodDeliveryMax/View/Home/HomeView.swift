
import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView (.vertical, showsIndicators: false){
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
                
                SearchTextField(searchText: .constant(""), placeholder: "Search Store")
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
                        Text("See all")
                            .padding()
                            .foregroundColor(.primaryApp)
                            .font(.customfont(.semibold, fontSize: 14))
                            .padding(.leading)
                    }
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ProductItemView(
                            imageName: "banana",
                            productName: "Organic Bananas",
                            description: "7pcs, Priceg",
                            price: "$4.99"
                        )
                        .padding(.leading)
                        
                        ProductItemView(
                            imageName: "apple_red",
                            productName: "Red Apple",
                            description: "1kg, Priceg",
                            price: "$4.99"
                        )
                        .padding(.leading, 8)
                        
                        ProductItemView(
                            imageName: "banana",
                            productName: "Organic Bananas",
                            description: "7pcs, Priceg",
                            price: "$4.99"
                        )
                        .padding(.leading, 8)
                    }
                }
                
                HStack{
                    Text("Best Selling")
                        .font(.customfont(.semibold, fontSize: 19))
                        .foregroundColor(.primaryText)
                        .padding(.leading)
                    Spacer()
                    
                    Button(action: {}){
                        Text("See all")
                            .padding()
                            .foregroundColor(.primaryApp)
                            .font(.customfont(.semibold, fontSize: 14))
                            .padding(.leading)
                    }
                }
                .padding(.top, 5)
                
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ProductItemView(
                            imageName: "bell_pepper_red",
                            productName: "Bell Pepper Red",
                            description: "1kg, Priceg",
                            price: "$4.99"
                        )
                        .padding(.leading)
                        
                        ProductItemView(
                            imageName: "ginger",
                            productName: "Ginger",
                            description: "250gm, Priceg",
                            price: "$4.99"
                        )
                        .padding(.leading, 8)
                        
                        ProductItemView(
                            imageName: "bell_pepper_red",
                            productName: "Bell Pepper Red",
                            description: "1kg, Priceg",
                            price: "$4.99"
                        )
                        .padding(.leading, 8)
                    }
                }
                
                HStack{
                    Text("Groceries")
                        .font(.customfont(.semibold, fontSize: 19))
                        .foregroundColor(.primaryText)
                        .padding(.leading)
                    Spacer()
                    
                    Button(action: {}){
                        Text("See all")
                            .padding()
                            .foregroundColor(.primaryApp)
                            .font(.customfont(.semibold, fontSize: 14))
                            .padding(.leading)
                    }
                }
                .padding(.top, 5)
                
                
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        Button(action: {}) {
                            HStack{
                                Image("pulses")
                                    .resizable()
                                    .frame(width: 70, height: 70)
                                    .padding(.leading, 15)
                                    .padding(.top, 15)
                                    .padding(.bottom, 15)
                                
                                Text("Pulses")
                                    .font(.customfont(.semibold, fontSize: 19))
                                    .foregroundColor(.primaryText)
                                    .padding(.trailing, 70)
                            }
                        }
                        .background(Color(hex: "#fbe1cd"))
                        .cornerRadius(10)
                        .padding(.leading)
                        
                        Button(action: {}) {
                            HStack{
                                Image("rice")
                                    .resizable()
                                    .frame(width: 70, height: 70)
                                    .padding(.leading, 15)
                                    .padding(.top, 15)
                                    .padding(.bottom, 15)
                                
                                Text("Rice")
                                    .font(.customfont(.semibold, fontSize: 19))
                                    .foregroundColor(.primaryText)
                                    .padding(.trailing, 85)
                            }
                        }
                        .background(Color(hex: "#dafbd9"))
                        .cornerRadius(10)
                        .padding(.leading)
                    }
                }
                .padding(.bottom, 16)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ProductItemView(
                            imageName: "beef_bone",
                            productName: "Beef Bone",
                            description: "1kg, Priceg",
                            price: "$4.99"
                        )
                        .padding(.leading)
                        
                        ProductItemView(
                            imageName: "broiler_chicken",
                            productName: "Broiler Chicken",
                            description: "1kg, Priceg",
                            price: "$4.99"
                        )
                        .padding(.leading, 8)
                        
                        ProductItemView(
                            imageName: "beef_bone",
                            productName: "Beef Bone",
                            description: "1kg, Priceg",
                            price: "$4.99"
                        )
                        .padding(.leading, 8)
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
