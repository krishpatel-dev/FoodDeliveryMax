import SwiftUI

struct BananaDetail: View {
    var body: some View {
        ProductDetailView(
                    productImage: "banana",
                    productName: "Natural Red Apple",
                    productQuantity: "1kg",
                    productPrice: "4.99",
                    productDetail: "Organic bananas are a great source of potassium and fiber. They may help in maintaining heart health and provide quick energy. Enjoy them as a natural snack or in smoothies as part of a healthy, balanced diet.",
                    nutritions: "100gr"
                )
    }
}

#Preview {
    BananaDetail()
}
