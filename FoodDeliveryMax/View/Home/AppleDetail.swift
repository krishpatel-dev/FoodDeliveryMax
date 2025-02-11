import SwiftUI

struct AppleDetail: View {
    var body: some View {
        ProductDetailView(
            productImage: "apple_red",
            productName: "Natural Red Apple",
            productQuantity: "1kg",
            productPrice: "4.99",
            productDetail: "Apples are nutritious. Apple may be good for weight loss. Apples may be good for your heart. As part of a healthy and varied diet.",
            nutritions: "100gr" 
        )
    }
}

#Preview {
    AppleDetail()
}
