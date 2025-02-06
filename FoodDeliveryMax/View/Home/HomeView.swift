
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
                        Text("See all")
                            .padding()
                            .foregroundColor(.primaryApp)
                            .font(.customfont(.semibold, fontSize: 14))
                            .padding(.leading)
                    }
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black.opacity(0.2), lineWidth: 0.8)
                            .frame(width: 165,height: 200)
                            .padding(.leading)
                            .overlay(
                                VStack(alignment: .leading) {
                                    
                                    Image("banana")
                                        .resizable()
                                        .frame(width: 110, height: 90)
                                    
                                    Text("Organic Bananas")
                                        .font(.customfont(.semibold, fontSize: 16))
                                        .foregroundColor(.primaryText)
                                    
                                    Text("7pcs, Priceg")
                                        .font(.customfont(.semibold, fontSize: 10))
                                        .foregroundColor(.gray)
                                    
                                    HStack {
                                        Text("$4.99")
                                            .font(.customfont(.semibold, fontSize: 17))
                                            .padding(.top)
                                        
                                        
                                        
                                        Button(action: {}) {
                                            Image("add")
                                                .resizable()
                                                .frame(width: 20, height: 20)
                                                .padding(7)
                                            
                                        }
                                        .background(Color.primaryApp)
                                        .cornerRadius(10)
                                        .padding(.top)
                                        .padding(.leading, 50)
                                    }
                                }
                            )
                        
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black.opacity(0.2), lineWidth: 0.8)
                            .frame(width: 165,height: 200)
                            .padding(.leading, 8)
                            .overlay(
                                VStack(alignment: .leading) {
                                    
                                    Image("apple")
                                        .resizable()
                                        .frame(width: 130, height: 90)
                                    
                                    Text("Red Apple")
                                        .font(.customfont(.semibold, fontSize: 16))
                                        .foregroundColor(.primaryText)
                                    
                                    Text("1kg, Priceg")
                                        .font(.customfont(.semibold, fontSize: 10))
                                        .foregroundColor(.gray)
                                    
                                    HStack {
                                        Text("$4.99")
                                            .font(.customfont(.semibold, fontSize: 17))
                                            .padding(.top)
                                        
                                        
                                        
                                        Button(action: {}) {
                                            Image("add")
                                                .resizable()
                                                .frame(width: 20, height: 20)
                                                .padding(7)
                                            
                                        }
                                        .background(Color.primaryApp)
                                        .cornerRadius(10)
                                        .padding(.top)
                                        .padding(.leading, 50)
                                    }
                                }
                            )
                        
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black.opacity(0.2), lineWidth: 0.8)
                            .frame(width: 170,height: 200)
                            .padding(.leading, 8)
                            .overlay(
                                VStack(alignment: .leading) {
                                    
                                    Image("banana")
                                        .resizable()
                                        .frame(width: 110, height: 90)
                                    
                                    Text("Organic Bananas")
                                        .font(.customfont(.semibold, fontSize: 16))
                                        .foregroundColor(.primaryText)
                                    
                                    Text("7pcs, Priceg")
                                        .font(.customfont(.semibold, fontSize: 10))
                                        .foregroundColor(.gray)
                                    
                                    HStack {
                                        Text("$4.99")
                                            .font(.customfont(.semibold, fontSize: 17))
                                            .padding(.top)
                                        
                                        Button(action: {}) {
                                            Image("add")
                                                .resizable()
                                                .frame(width: 20, height: 20)
                                                .padding(7)
                                            
                                        }
                                        .background(Color.primaryApp)
                                        .cornerRadius(10)
                                        .padding(.top)
                                        .padding(.leading, 50)
                                    }
                                }
                            )
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
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black.opacity(0.2), lineWidth: 0.8)
                            .frame(width: 165,height: 200)
                            .padding(.leading)
                            .overlay(
                                VStack(alignment: .leading) {
                                    
                                    Image("bell_pepper_red")
                                        .resizable()
                                        .frame(width: 110, height: 90)
                                    
                                    Text("Bell Pepper Red")
                                        .font(.customfont(.semibold, fontSize: 16))
                                        .foregroundColor(.primaryText)
                                    
                                    Text("1kg, Priceg")
                                        .font(.customfont(.semibold, fontSize: 10))
                                        .foregroundColor(.gray)
                                    
                                    HStack {
                                        Text("$4.99")
                                            .font(.customfont(.semibold, fontSize: 17))
                                            .padding(.top)
                                        
                                        
                                        
                                        Button(action: {}) {
                                            Image("add")
                                                .resizable()
                                                .frame(width: 20, height: 20)
                                                .padding(7)
                                            
                                        }
                                        .background(Color.primaryApp)
                                        .cornerRadius(10)
                                        .padding(.top)
                                        .padding(.leading, 50)
                                    }
                                }
                            )
                        
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black.opacity(0.2), lineWidth: 0.8)
                            .frame(width: 165,height: 200)
                            .padding(.leading, 8)
                            .overlay(
                                VStack(alignment: .leading) {
                                    
                                    Image("ginger")
                                        .resizable()
                                        .frame(width: 130, height: 90)
                                    
                                    Text("Ginger")
                                        .font(.customfont(.semibold, fontSize: 16))
                                        .foregroundColor(.primaryText)
                                    
                                    Text("250gm, Priceg")
                                        .font(.customfont(.semibold, fontSize: 10))
                                        .foregroundColor(.gray)
                                    
                                    HStack {
                                        Text("$4.99")
                                            .font(.customfont(.semibold, fontSize: 17))
                                            .padding(.top)
                                        
                                        
                                        
                                        Button(action: {}) {
                                            Image("add")
                                                .resizable()
                                                .frame(width: 20, height: 20)
                                                .padding(7)
                                            
                                        }
                                        .background(Color.primaryApp)
                                        .cornerRadius(10)
                                        .padding(.top)
                                        .padding(.leading, 50)
                                    }
                                }
                            )
                        
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black.opacity(0.2), lineWidth: 0.8)
                            .frame(width: 170,height: 200)
                            .padding(.leading, 8)
                            .overlay(
                                VStack(alignment: .leading) {
                                    
                                    Image("bell_pepper_red")
                                        .resizable()
                                        .frame(width: 110, height: 90)
                                    
                                    Text("Bell Pepper Red")
                                        .font(.customfont(.semibold, fontSize: 16))
                                        .foregroundColor(.primaryText)
                                    
                                    Text("1kg, Priceg")
                                        .font(.customfont(.semibold, fontSize: 10))
                                        .foregroundColor(.gray)
                                    
                                    HStack {
                                        Text("$4.99")
                                            .font(.customfont(.semibold, fontSize: 17))
                                            .padding(.top)
                                        
                                        Button(action: {}) {
                                            Image("add")
                                                .resizable()
                                                .frame(width: 20, height: 20)
                                                .padding(7)
                                            
                                        }
                                        .background(Color.primaryApp)
                                        .cornerRadius(10)
                                        .padding(.top)
                                        .padding(.leading, 50)
                                    }
                                }
                            )
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
            }
        }
    }
}

#Preview {
    HomeView()
}
