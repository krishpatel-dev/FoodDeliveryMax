import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.black.opacity(0.07))
                    .frame(width: .infinity, height: 360)
                    .overlay(
                        Image("apple_red")
                            .resizable()
                            .frame(width: .infinity, height: 200)
                            .padding(.top, 50)
                            .padding(.leading, 35)
                            .padding(.trailing, 35)
                        
                    )
                    .ignoresSafeArea(edges: .top)
                
                HStack{
                    Text("Natural Red Apple")
                        .font(.customfont(.bold, fontSize: 19))
                        .foregroundColor(.primaryText)
                        .padding(.leading)
                    Spacer()
                    
                    Button(action: {}){
                        Image("fav")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .padding()
                    }
                }
                .padding(.top, -70)
                
                Text("1kg, Price")
                    .font(.customfont(.semibold, fontSize: 14))
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.top, -52)
                
                HStack{
                    Button(action: {}) {
                        Image("subtack")
                            .resizable()
                            .frame(width: 15, height: 2)
                            .padding(.leading)
                    }
                    .padding(.trailing, 10)
                    
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black.opacity(0.1), lineWidth: 0.8)
                        .frame(width: 35, height: 35)
                        .overlay(
                            Text("1")
                                .font(.customfont(.semibold, fontSize: 15))
                                .foregroundColor(.primaryText)
                        )
                    
                    Button(action: {}) {
                        Image("add_green")
                            .resizable()
                            .frame(width: 15, height: 15)
                    }
                    .padding(.leading, 10)
                    
                    Spacer()
                    
                    Text("$4.99")
                        .font(.customfont(.bold, fontSize: 20))
                        .foregroundColor(.primaryText)
                        .padding(.trailing)
                }
                
                Rectangle()
                    .stroke(Color.black.opacity(0.1))
                    .frame(width: .infinity, height: 0.5)
                    .padding(.leading)
                    .padding(.trailing)
                    
                HStack{
                    Text("Product Detail")
                        .font(.customfont(.semibold, fontSize: 15))
                        .foregroundColor(.primaryText)
                        .padding(.leading)
                    Spacer()
                    
                    Button(action: {}){
                        Image("detail_open")
                            .resizable()
                            .frame(width: 16, height: 9)
                            .padding()
                    }
                }
                
                Text("Apples are nutritious. Apple may be good for weight loss. Apples may be good for your heart. As part of a healtful and varied diet.")
                    .font(.customfont(.medium, fontSize: 13))
                    .foregroundStyle(.secondary)
                    .padding(.leading)
                    .padding(.trailing)
                
                Rectangle()
                    .stroke(Color.black.opacity(0.1))
                    .frame(width: .infinity, height: 0.5)
                    .padding(.leading)
                    .padding(.trailing)
                
                HStack{
                    Text("Nutritions")
                        .font(.customfont(.semibold, fontSize: 15))
                        .foregroundColor(.primaryText)
                        .padding(.leading)
                    Spacer()
                    
                    RoundedRectangle(cornerRadius: 7)
                        .fill(Color.black.opacity(0.07))
                        .frame(width: 40, height: 20)
                        .overlay(
                            Text("100gr")
                                .font(.customfont(.semibold, fontSize: 10))
                                .foregroundStyle(.secondary)
                        )
                        .padding(.trailing, -10)
                    
                    Button(action: {}){
                        Image("next_1")
                            .resizable()
                            .frame(width: 25, height:25)
                            .padding()
                    }
                }
                
                Rectangle()
                    .stroke(Color.black.opacity(0.1))
                    .frame(width: .infinity, height: 0.5)
                    .padding(.leading)
                    .padding(.trailing)
                
                HStack{
                    Text("Review")
                        .font(.customfont(.semibold, fontSize: 15))
                        .foregroundColor(.primaryText)
                        .padding(.leading)
                    Spacer()
                    
                    RoundedRectangle(cornerRadius: 7)
                        .fill(Color.white)
                        .frame(width: 100, height: 20)
                        .overlay(
                            HStack{
                                Image("star")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .padding(.trailing, -5)
                                
                                Image("star")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .padding(.trailing, -5)

                                Image("star")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .padding(.trailing, -5)

                                Image("star")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .padding(.trailing, -5)

                                Image("star")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .padding(.trailing, -5)
                                
                            }
                        )
                        .padding(.trailing, -10)
                    
                    Button(action: {}){
                        Image("next_1")
                            .resizable()
                            .frame(width: 25, height:25)
                            .padding()
                    }
                }
                
                Button(action: {}){
                    Text("Add to Basket")
                        .font(.customfont(.semibold, fontSize: 20))
                        .foregroundColor(.white)
                }
                
                .background(Color.primaryApp)
                .cornerRadius(10)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 60)
        
            }
            .frame(maxHeight: .infinity, alignment: .top)
            
            
            
            VStack{
                HStack{
                    NavigationLink {
                        HomeView()
                    } label: {
                        Image("back")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                    Spacer()
                    
                    
                }
                Spacer()
            }
            .padding(.top, 10)
            .padding(.horizontal, 20)
        }
        
        
    }
}



#Preview {
    ProductDetailView()
}
