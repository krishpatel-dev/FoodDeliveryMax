import SwiftUI

struct PromoCodeView: View {
    @State private var promoCode: String = ""
    @State private var discountApplied = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Promo Code")
                .font(.customfont(.bold, fontSize: 24))
                .padding()
            
            Text("Enter your promo code to get discounts on your next purchase.")
                .font(.customfont(.regular, fontSize: 16))
                .foregroundColor(.gray)
                .padding([.leading, .bottom])
            
            TextField("Enter Promo Code", text: $promoCode)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
                .padding(.bottom, 20)
            
            Button(action: {
                applyPromoCode()
            }) {
                Text("Apply Promo Code")
                    .font(.customfont(.medium, fontSize: 18))
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .disabled(promoCode.isEmpty)
            
            if discountApplied {
                Text("Discount Applied!")
                    .foregroundColor(.green)
                    .font(.customfont(.medium, fontSize: 16))
                    .padding(.top, 20)
            }
            
            Spacer()
        }
        .padding()
    }
    
    func applyPromoCode() {
        // Apply promo code logic
        if promoCode == "DISCOUNT10" {
            discountApplied = true
        }
    }
}

#Preview {
    PromoCodeView()
}
