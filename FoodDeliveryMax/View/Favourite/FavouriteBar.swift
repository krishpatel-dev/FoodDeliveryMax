import SwiftUI

struct FavouriteBar: View {
    var imageName: String
    var itemName: String
    var description: String
    var price: String

    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 70)

            VStack(alignment: .leading) {
                Text(itemName)
                    .font(.customfont(.semibold, fontSize: 17))
                    .padding(.bottom, 1)

                Text(description)
                    .font(.customfont(.semibold, fontSize: 12))
                    .foregroundColor(.gray)
            }

            Spacer()

            Text(price)
                .font(.customfont(.bold, fontSize: 17))

            Button(action: {}) {
                Image("next_1")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
        }
        .padding()
    }
}

#Preview {
    FavouriteBar(imageName: "cocacola_can", itemName: "Diet Coke", description: "355ml, Price", price: "$1.99")
}
