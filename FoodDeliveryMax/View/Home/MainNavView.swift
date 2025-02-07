import SwiftUI

struct MainNavView: View {
    var body: some View {
        NavigationView {
            VStack {
                // Your main content here, e.g., a Welcome banner or any other info
                Spacer()

                // HomeView button navigation
                BottomNavBar()
            }
            .navigationBarHidden(true) // Hide the default navigation bar
        }
    }
}


#Preview {
    MainNavView()
}
