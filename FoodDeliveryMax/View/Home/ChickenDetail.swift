import SwiftUI

struct ChickenDetail: View {
    var body: some View {
        ProductDetailView(
                    productImage: "broiler_chicken", 
                    productName: "Natural Red Apple",
                    productQuantity: "1kg",
                    productPrice: "4.99",
                    productDetail: "Broiler chicken is a rich source of lean protein and essential nutrients. It may help build and repair muscle while supporting your immune system. Ideal for grilling, baking, or sautéing in your favorite dishes.",
                    nutritions: "100gr"
                )    }
}

#Preview {
    ChickenDetail()
}
