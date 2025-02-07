import SwiftUI

struct BottomNavBar: View {
    var body: some View {
        HStack {
            NavButton(title: "Home", icon: "house", action: {
                // Handle Home button action
                print("Home tapped")
            })
            NavButton(title: "Search", icon: "magnifyingglass", action: {
                // Handle Search button action
                print("Search tapped")
            })
            NavButton(title: "Favorites", icon: "heart", action: {
                // Handle Favorites button action
                print("Favorites tapped")
            })
            NavButton(title: "Profile", icon: "person", action: {
                // Handle Profile button action
                print("Profile tapped")
            })
            NavButton(title: "Settings", icon: "gear", action: {
                // Handle Settings button action
                print("Settings tapped")
            })
        }
        .padding()
        .background(Color.white)
        .shadow(radius: 5)
        .frame(maxWidth: .infinity, maxHeight: 60)
    }
}

#Preview {
    BottomNavBar()
}
