import SwiftUI

struct NotificationsView: View {
    @State private var notificationsEnabled = true
    @State private var emailNotificationsEnabled = false
    @State private var pushNotificationsEnabled = true
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Notification Settings")) {
                    Toggle("Enable All Notifications", isOn: $notificationsEnabled)
                    
                    if notificationsEnabled {
                        Toggle("Email Notifications", isOn: $emailNotificationsEnabled)
                        Toggle("Push Notifications", isOn: $pushNotificationsEnabled)
                    }
                }
                
                Section {
                    Button(action: {
                        // Handle notification preferences save
                    }) {
                        Text("Save Settings")
                            .font(.customfont(.medium, fontSize: 18))
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                }
            }
            .navigationBarTitle("Notifications", displayMode: .inline)
        }
    }
}

#Preview {
    NotificationsView()
}
