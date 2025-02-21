import SwiftUI

struct CartItemRow: View {
    // Declare parameters
    var imageName: String
    var itemName: String
    var pricePerUnit: Double // Changed from price (string) to pricePerUnit (double)
    var description: String
    @Binding var quantity: Int
    
    // Computed property to calculate the total price based on the quantity
    var totalPrice: String {
        let total = pricePerUnit * Double(quantity)
        return String(format: "$%.2f", total)
    }
    
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .frame(width: 80, height: 70)
            
            VStack {
                HStack {
                    Text(itemName)
                        .font(.customfont(.semibold, fontSize: 17))
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Image("close_gray")
                            .resizable()
                            .frame(width: 23, height: 23)
                    }
                }
                
                HStack {
                    Text(description)
                        .font(.customfont(.semibold, fontSize: 13))
                        .foregroundColor(.gray)
                        .padding(.bottom, 7)
                    
                    Spacer()
                }
                
                HStack {
                    RoundedRectangle(cornerRadius: 13)
                        .stroke(Color.black.opacity(0.1), lineWidth: 0.8)
                        .frame(width: 35, height: 35)
                        .overlay(
                            Button(action: {
                                if quantity > 1 {
                                    quantity -= 1
                                }
                            }) {
                                Image("subtack")
                                    .resizable()
                                    .frame(width: 15, height: 2)
                            }
                        )
                    
                    Text("\(quantity)")
                        .font(.customfont(.semibold, fontSize: 15))
                        .foregroundColor(.primaryText)
                        .padding(.leading, 7)
                        .padding(.trailing, 7)
                    
                    RoundedRectangle(cornerRadius: 13)
                        .stroke(Color.black.opacity(0.1), lineWidth: 0.8)
                        .frame(width: 35, height: 35)
                        .overlay(
                            Button(action: {
                                quantity += 1
                            }) {
                                Image("add_green")
                                    .resizable()
                                    .frame(width: 15, height: 15)
                            }
                        )
                    
                    Spacer()
                    
                    Text(totalPrice) // Display the computed total price
                        .font(.customfont(.semibold, fontSize: 18))
                        .foregroundColor(.primaryText)
                }
            }
            .padding(.leading)
        }
        .padding()
    }
}

struct CartItemRow_Previews: PreviewProvider {
    static var previews: some View {
        CartItemRow(imageName: "bell_pepper_red", itemName: "Bell Pepper Red", pricePerUnit: 4.99, description: "1kg, Price", quantity: .constant(1))
    }
}
