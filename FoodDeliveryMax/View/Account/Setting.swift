import SwiftUI

struct Setting: View {
    var imageName: String
    var text: String
    var imageSize: CGFloat
    
    var body: some View {
        Button(action: {}) {
            HStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: imageSize, height: imageSize)
                
                Text(text)
                    .font(.customfont(.semibold, fontSize: 17))
                    .padding(.leading, 10)
                    .foregroundColor(.primaryText)
                
                Spacer()
                
                Image("next_1")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            .padding(.horizontal)
            .padding(.vertical, 5)
        }
    }
}

#Preview {
    Setting(imageName: "a_orders", text: "Orders", imageSize: 30) // Customizing the image size to 40
}
