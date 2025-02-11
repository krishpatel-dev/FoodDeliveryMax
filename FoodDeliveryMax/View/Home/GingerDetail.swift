import SwiftUI

struct GingerDetail: View {
    var body: some View {
        ProductDetailView(
                    productImage: "ginger",
                    productName: "Natural Red Apple",
                    productQuantity: "1kg",
                    productPrice: "4.99",
                    productDetail: "Ginger is well-known for its anti-inflammatory properties. It may help improve digestion, reduce nausea, and relieve muscle pain. Incorporate ginger into your teas, smoothies, or cooking for its health benefits.",
                    nutritions: "100gr"
                )    }
}

#Preview {
    GingerDetail()
}
