import SwiftUI

struct MyCartView: View {
    
    private let prices: [Double] = [4.99, 1.99, 3.00, 2.99, 15.99]
    @State private var quantities = [1, 1, 1, 1, 1]
    
    // Computed property to calculate total price of the cart
    var totalPrice: Double {
        var total: Double = 0
        for index in 0..<prices.count {
            total += prices[index] * Double(quantities[index])
        }
        return total
    }
    
    var body: some View {
        VStack {
            Text("My Cart")
                .font(.customfont(.bold, fontSize: 20))
                .padding(.bottom)
                .padding(.top)
            
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.gray.opacity(0.3))
            
            ScrollView (.vertical, showsIndicators: false) {
                VStack {
                    
                    
                    
                    
                }
            }
            
            Button(action: {}) {
                Text("Go to Checkout - $\(String(format: "%.2f", totalPrice))")
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
    MyCartView()
}
