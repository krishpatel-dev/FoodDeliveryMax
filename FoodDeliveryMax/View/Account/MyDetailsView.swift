import SwiftUI

struct MyDetailsView: View {
    @State private var fullName: String = "Krish Patel"
    @State private var email: String = "krishpatel1234@gmail.com"
    @State private var phoneNumber: String = "+1 234 567 890"
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Information")) {
                    TextField("Full Name", text: $fullName)
                        .font(.customfont(.regular, fontSize: 16))
                    TextField("Email", text: $email)
                        .font(.customfont(.regular, fontSize: 16))
                        .keyboardType(.emailAddress)
                    TextField("Phone Number", text: $phoneNumber)
                        .font(.customfont(.regular, fontSize: 16))
                        .keyboardType(.phonePad)
                }
                
                Section {
                    Button(action: {
                        // Save updated details
                    }) {
                        Text("Save Changes")
                            .font(.customfont(.medium, fontSize: 18))
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                }
            }
            .navigationBarTitle("My Details", displayMode: .inline)
        }
    }
}

#Preview {
    MyDetailsView()
}
