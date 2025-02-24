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
