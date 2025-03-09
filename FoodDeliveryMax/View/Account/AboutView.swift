import SwiftUI

struct AboutView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("About Us")
                    .font(.customfont(.bold, fontSize: 24))
                    .padding()
                
                Text("We are a leading company in delivering top-quality products and services. Our goal is to provide excellent customer service and a seamless shopping experience for all our users.")
                    .font(.customfont(.regular, fontSize: 16))
                    .foregroundColor(.gray)
                    .padding([.leading, .trailing])
                
                Text("Version 1.0.0")
                    .font(.customfont(.regular, fontSize: 16))
                    .foregroundColor(.gray)
                    .padding([.leading, .trailing])
                
                Text("Contact Us")
                    .font(.customfont(.bold, fontSize: 20))
                    .padding([.top, .bottom])
                
                VStack(alignment: .leading) {
                    Text("Email: support@company.com")
                        .font(.customfont(.regular, fontSize: 16))
                        .foregroundColor(.gray)
                    Text("Phone: +1 234 567 890")
                        .font(.customfont(.regular, fontSize: 16))
                        .foregroundColor(.gray)
                }
                .padding([.leading, .trailing])
                
                Spacer()
            }
            .navigationBarTitle("About", displayMode: .inline)
        }
    }
}

#Preview {
    AboutView()
}
