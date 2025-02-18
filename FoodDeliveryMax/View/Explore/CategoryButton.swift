import SwiftUI

struct CategoryCard: View {
    let borderColor: Color
    let backgroundColor: Color
    let imageName: String
    let text: String
    let detailView: AnyView
    
    var body: some View {
        NavigationLink(destination: detailView) { // Wrap the card in a NavigationLink
            RoundedRectangle(cornerRadius: 15)
                .stroke(borderColor, lineWidth: 0.8)
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .fill(backgroundColor)
                )
                .frame(width: 165, height: 175)
                .overlay(
                    VStack {
                        Image(imageName)
                            .resizable()
                            .frame(width: 110, height: 70)
                            .padding(.bottom, 15)
                        
                        Text(text)
                            .font(.customfont(.semibold, fontSize: 15))
                            .foregroundColor(.primaryText)
                    }
                )
        }
    }
}

#Preview {
    CategoryCard(
        borderColor: Color.blue.opacity(0.9),
        backgroundColor: Color.blue.opacity(0.1),
        imageName: "banana",
        text: "Fruits",
        detailView: AnyView(Beverages())
    )
}
