import SwiftUI

struct FavouriteView: View {
    
    var body: some View {
        VStack {
            Text("Favourite")
                .font(.customfont(.bold, fontSize: 20))
                .padding(.bottom)
                .padding(.top)
            
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.gray.opacity(0.3))
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack (alignment: .leading) {
                    FavouriteBar(imageName: "sprite_can", itemName: "Sprite Can", description: "325ml, Price", price: "$1.50")
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray.opacity(0.3))
                        .padding(.horizontal)
                    
                    FavouriteBar(imageName: "diet_coke", itemName: "Diet Coke", description: "355ml, Price", price: "$1.99")
            
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray.opacity(0.3))
                        .padding(.horizontal)
                    
                    FavouriteBar(imageName: "juice_apple_grape", itemName: "Apple & Grape Juice", description: "2L, Price", price: "$15.50")
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray.opacity(0.3))
                        .padding(.horizontal)
                    
                    FavouriteBar(imageName: "cocacola_can", itemName: "Cococola Can", description: "325ml, Price", price: "$4.99")
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray.opacity(0.3))
                        .padding(.horizontal)
                    
                    FavouriteBar(imageName: "pepsi_can", itemName: "Pepsi Can", description: "330ml , Price", price: "$4.99")

                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray.opacity(0.3))
                        .padding(.horizontal)
                    
                    FavouriteBar(imageName: "orenge_juice", itemName: "Orange Juice", description: "2L, Price", price: "$15.99")

                }
            }
            
            Button(action: {}) {
                Text("Add All to Cart")
                    .font(.customfont(.semibold, fontSize: 18))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 60)
                    .background(Color.primaryApp)
                    .cornerRadius(15)
            }
            .padding(.horizontal)
            .padding(.bottom)
        }
    }
}

#Preview {
    FavouriteView()
}
