import SwiftUI

struct LogInView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State var email: String = ""
    @State var password: String = ""
    @State private var showAlert = false
    @State private var alertMessage = ""
    @State private var navigateToMainTabView = false
    @State private var isNavigating = false // Track navigation state
    
    var body: some View {
        ZStack {
            // Background
            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            
            VStack {
                Image("color_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .padding(.bottom, 120)
                
                Text("LogIn")
                    .font(.customfont(.semibold, fontSize: 26))
                    .foregroundColor(.primaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 10)
                
                Text("Enter your email and password")
                    .font(.customfont(.semibold, fontSize: 16))
                    .foregroundColor(.secondaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 35)
                
                Text("Email")
                    .font(.customfont(.semibold, fontSize: 16))
                    .foregroundColor(.secondaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 7)
                
                TextField("Enter Email", text: $email)
                    .font(.customfont(.semibold, fontSize: 16))
                    .frame(minWidth: 0, maxWidth: .infinity)
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray.opacity(0.3))
                    .padding(.bottom, 26)
                
                Text("Password")
                    .font(.customfont(.semibold, fontSize: 16))
                    .foregroundColor(.secondaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 7)
                
                SecureField("Enter Password", text: $password)
                    .font(.customfont(.semibold, fontSize: 16))
                    .frame(minWidth: 0, maxWidth: .infinity)
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray.opacity(0.3))
                    .padding(.bottom, 15)
                
                Button {
                    // Handle forgot password action
                } label: {
                    Text("Forgot Password?")
                        .font(.customfont(.medium, fontSize: 13))
                        .foregroundColor(.primaryText)
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                .padding(.bottom, 20)
                
                Button {
                    if email.isEmpty || password.isEmpty {
                        alertMessage = "Please enter both email and password."
                        showAlert = true
                    } else if !isValidEmail(email) {
                        alertMessage = "Please enter a valid email address."
                        showAlert = true
                    } else {
                        // Trigger navigation with custom transition
                        withAnimation {
                            isNavigating = true
                        }
                    }
                } label: {
                    Text("Log In")
                        .font(.customfont(.semibold, fontSize: 18))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 60)
                        .background(Color.primaryApp)
                        .cornerRadius(15)
                }
                .padding(.bottom, 20)
                
                HStack {
                    Text("Don't have an account?")
                        .font(.customfont(.semibold, fontSize: 16))
                        .foregroundColor(.primaryText)
                    
                    NavigationLink {
                        SignUpView()
                    } label: {
                        Text("SignUp")
                            .font(.customfont(.semibold, fontSize: 16))
                            .foregroundColor(.primaryApp)
                    }
                }
            }
            .padding(.bottom, 50)
            .padding(.horizontal, 25)
            .padding(.bottom, .bottomInsets)
            
            VStack {
                HStack {
                    NavigationLink {
                        SignInView()
                    } label: {
                        Image("back")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                    Spacer()
                }
                Spacer()
            }
            .padding(.top, 60)
            .padding(.horizontal, 20)
            
            // If navigation state is true, show MainTabView with custom transition
            if isNavigating {
                MainTabView()
                    .transition(.move(edge: .trailing)) // Transition from the right
                    .zIndex(1) // Bring it to the front
            }
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Error"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
        }
        .navigationBarHidden(true)
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
    }
    
    // Helper function to validate email
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: email)
    }
}


#Preview {
    NavigationStack {
        LogInView()
    }
}
