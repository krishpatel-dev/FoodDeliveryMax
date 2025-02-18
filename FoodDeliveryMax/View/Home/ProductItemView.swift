import SwiftUI

struct ProductItemView: View {
    let imageName: String
    let productName: String
    let description: String
    let price: String
    let detailView: AnyView
    let imageWidth: CGFloat
    let imageHeight: CGFloat
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .stroke(Color.black.opacity(0.2), lineWidth: 0.8)
            .frame(width: 165, height: 220)
            .overlay(
                VStack(alignment: .leading) {
                    
                    NavigationLink(destination: detailView) {
                        Image(imageName)
                            .resizable()
                            .frame(width: imageWidth, height: imageHeight)
                            .padding(.bottom, 15)
                            .padding(.leading)
                    }
                    
                    Text(productName)
                        .font(.customfont(.semibold, fontSize: 16))
                        .foregroundColor(.primaryText)
                    
                    Text(description)
                        .font(.customfont(.semibold, fontSize: 10))
                        .foregroundColor(.gray)
                    
                    HStack {
                        Text(price)
                            .font(.customfont(.semibold, fontSize: 17))
                            .padding(.top)
                        
                        Button(action: {}) {
                            Image("add")
                                .resizable()
                                .frame(width: 15, height: 15)
                                .padding(9)
                        }
                        .background(Color.primaryApp)
                        .cornerRadius(13)
                        .padding(.top)
                        .padding(.leading, 50)
                    }
                }
            )
    }
}

#Preview {
    ProductItemView(
        imageName: "banana",
        productName: "banana",
        description: "1kg",
        price: "$4.99",
        detailView: AnyView(BananaDetail()),
        imageWidth: 110,
        imageHeight: 90
    )
}
