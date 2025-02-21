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
                    // Cart Items Rows
                    CartItemRow(imageName: "bell_pepper_red", itemName: "Bell Pepper Red", pricePerUnit: prices[0], description: "1kg, Price", quantity: $quantities[0], imageWidth: 80, imageHeight: 70)
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray.opacity(0.3))
                        .padding(.horizontal)
                    
                    CartItemRow(imageName: "egg_chicken_red", itemName: "Egg Chicken Red", pricePerUnit: prices[1], description: "4pcs, Price", quantity: $quantities[1], imageWidth: 80, imageHeight: 70)
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray.opacity(0.3))
                        .padding(.horizontal)
                    
                    CartItemRow(imageName: "banana", itemName: "Organic Banana", pricePerUnit: prices[2], description: "12pcs, Price", quantity: $quantities[2], imageWidth: 80, imageHeight: 65)
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray.opacity(0.3))
                        .padding(.horizontal)
                    
                    CartItemRow(imageName: "ginger", itemName: "Ginger", pricePerUnit: prices[3], description: "250gm, Price", quantity: $quantities[3], imageWidth: 80, imageHeight: 60)
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray.opacity(0.3))
                        .padding(.horizontal)
                    
                    CartItemRow(imageName: "juice_apple_grape", itemName: "Apple & Grape Juice", pricePerUnit: prices[4], description: "2L, Price", quantity: $quantities[4], imageWidth: 80, imageHeight: 70)
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
