import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack {
                    Image("u1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Krish Patel")
                                .font(.customfont(.bold, fontSize: 20))
                            
                            Button(action: {}) {
                                Image("edit")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                            }
                        }
                        
                        Text("krishpatel1234@gmail.com")
                            .font(.customfont(.medium, fontSize: 13))
                            .foregroundColor(.gray)
                    }
                    .padding(.leading, 8)
                }
                .padding()
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray.opacity(0.3))
                
                NavigationLink{
                    OrdersView()
                }label: {
                    Setting(imageName: "a_orders", text: "Orders", imageSize: 28)
                }
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray.opacity(0.3))
                
                NavigationLink(destination: MyDetailsView()) {
                    Setting(imageName: "a_details", text: "My Details", imageSize: 28)
                }
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray.opacity(0.3))
                
                NavigationLink(destination: DeliveryAddressView()) {
                    Setting(imageName: "a_location", text: "Delivery Address", imageSize: 28)
                }
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray.opacity(0.3))
                
                NavigationLink(destination: PaymentMethodsView()) {
                    Setting(imageName: "a_payment", text: "Payment Methods", imageSize: 28)
                }
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray.opacity(0.3))
                
                NavigationLink(destination: PromoCodeView()) {
                    Setting(imageName: "a_promocode", text: "Promo Code", imageSize: 28)
                }
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray.opacity(0.3))
                
                NavigationLink(destination: NotificationsView()) {
                    Setting(imageName: "a_notification", text: "Notifications", imageSize: 28)
                }
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray.opacity(0.3))
                
                NavigationLink(destination: HelpView()) {
                    Setting(imageName: "a_help", text: "Help", imageSize: 28)
                }
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray.opacity(0.3))
                
                NavigationLink(destination: AboutView()) {
                    Setting(imageName: "a_detail", text: "About", imageSize: 28)
                }
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray.opacity(0.3))
                
                Spacer()
                
                Button(action: {}) {
                    HStack {
                        Image("logout")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 20)
                            .padding(.leading, 25)
                        
                        Spacer()
                        
                        Text("Log Out")
                            .font(.customfont(.semibold, fontSize: 18))
                            .foregroundColor(.primaryApp)
                            .multilineTextAlignment(.center)
                            .padding(.trailing, 150)
                    }
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 60)
                .background(Color.black.opacity(0.08))
                .cornerRadius(15)
                .padding(.horizontal)
                .padding(.bottom)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        }
    }
}

#Preview {
    AccountView()
}
