import SwiftUI

struct CartItemRow: View {
    // Declare parameters
    var imageName: String
    var itemName: String
    var pricePerUnit: Double
    var description: String
    @Binding var quantity: Int
    var imageWidth: CGFloat
    var imageHeight: CGFloat
    
    var totalPrice: String {
        let total = pricePerUnit * Double(quantity)
        return String(format: "$%.2f", total)
    }
    
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: imageWidth, height: imageHeight)
            
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
                    
                    Text(totalPrice)
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
        // Providing values for image width and height
        CartItemRow(imageName: "bell_pepper_red", itemName: "Bell Pepper Red", pricePerUnit: 4.99, description: "1kg, Price", quantity: .constant(1), imageWidth: 100, imageHeight: 80)
    }
}
