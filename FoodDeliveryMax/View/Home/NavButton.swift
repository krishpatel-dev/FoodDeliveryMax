import SwiftUI

struct NavButton: View {
    var title: String
    var icon: String
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            VStack {
                Image(systemName: icon)
                    .font(.system(size: 20))
                    .foregroundColor(.blue) // Customize the color
                Text(title)
                    .font(.caption)
                    .foregroundColor(.blue) // Customize the color
            }
            .padding(.top, 5)
        }
        .frame(maxWidth: .infinity)
    }
}

struct NavButton_Previews: PreviewProvider {
    static var previews: some View {
        NavButton(title: "Home", icon: "house", action: {})
            .previewLayout(.sizeThatFits)
    }
}
