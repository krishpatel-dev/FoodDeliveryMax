import SwiftUI

struct PepperDetail: View {
    var body: some View {
        ProductDetailView(
                    productImage: "bell_pepper_red",
                    productName: "Natural Red Apple",
                    productQuantity: "1kg",
                    productPrice: "4.99",
                    productDetail: "Red bell peppers are rich in vitamins A and C, and antioxidants. They may help boost your immune system and improve skin health. Add them to salads, stir-fries, or as a crunchy snack.",
                    nutritions: "100gr"
                )
    }
}

#Preview {
    PepperDetail()
}
