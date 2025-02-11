import SwiftUI

struct BeefDetail: View {
    var body: some View {
        ProductDetailView(
                    productImage: "beef_bone",
                    productName: "Natural Red Apple",
                    productQuantity: "1kg",
                    productPrice: "4.99",
                    productDetail: "Beef bones are a great source of collagen and minerals, which may help promote joint health and improve skin elasticity. Use them to make nutritious bone broth or for slow-cooked stews.",
                    nutritions: "100gr"
                )    }
}

#Preview {
    BeefDetail()
}
