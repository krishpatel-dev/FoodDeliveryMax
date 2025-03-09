import SwiftUI

struct PaymentMethodsView: View {
    @State private var paymentMethods = [
        PaymentMethod(type: "Visa", lastFour: "1234", icon: "creditcard"),
        PaymentMethod(type: "MasterCard", lastFour: "5678", icon: "creditcard")
    ]
    
    @State private var isAddingNewPayment = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Payment Methods")
                    .font(.customfont(.bold, fontSize: 24))
                    .padding()
                
                Text("Manage your saved payment methods.")
                    .font(.customfont(.regular, fontSize: 16))
                    .foregroundColor(.gray)
                    .padding([.leading, .bottom])
                
                List {
                    ForEach(paymentMethods) { payment in
                        PaymentMethodRow(paymentMethod: payment)
                    }
                    .onDelete(perform: deletePaymentMethod)
                }
                
                Button(action: {
                    isAddingNewPayment.toggle()
                }) {
                    Text("Add New Payment Method")
                        .font(.customfont(.medium, fontSize: 18))
                        .foregroundColor(.primaryApp)
                        .padding()
                        .background(Color.blue.opacity(0.1))
                        .cornerRadius(10)
                }
                
                Spacer()
            }
            .navigationBarTitle("Payment Methods", displayMode: .inline)
            .sheet(isPresented: $isAddingNewPayment) {
                AddPaymentMethodView()
            }
        }
    }
    
    func deletePaymentMethod(at offsets: IndexSet) {
        paymentMethods.remove(atOffsets: offsets)
    }
}

struct PaymentMethod: Identifiable {
    let id = UUID()
    let type: String
    let lastFour: String
    let icon: String
}

struct PaymentMethodRow: View {
    var paymentMethod: PaymentMethod
    
    var body: some View {
        HStack {
            Image(systemName: paymentMethod.icon)
                .foregroundColor(.primaryApp)
            VStack(alignment: .leading) {
                Text(paymentMethod.type)
                    .font(.customfont(.bold, fontSize: 18))
                Text("•••• \(paymentMethod.lastFour)")
                    .font(.customfont(.regular, fontSize: 14))
                    .foregroundColor(.gray)
            }
            Spacer()
            Image(systemName: "chevron.right.circle.fill")
                .foregroundColor(.primaryApp)
        }
        .padding(.vertical, 10)
    }
}

struct AddPaymentMethodView: View {
    @State private var cardNumber: String = ""
    @State private var expirationDate: String = ""
    @State private var securityCode: String = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Card Information")) {
                    TextField("Card Number", text: $cardNumber)
                        .keyboardType(.numberPad)
                    TextField("Expiration Date", text: $expirationDate)
                        .keyboardType(.numberPad)
                    TextField("Security Code", text: $securityCode)
                        .keyboardType(.numberPad)
                }
                
                Section {
                    Button(action: {
                        // Add payment method logic
                    }) {
                        Text("Save Payment Method")
                            .font(.customfont(.medium, fontSize: 18))
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                }
            }
            .navigationBarTitle("Add Payment Method", displayMode: .inline)
        }
    }
}

#Preview {
    PaymentMethodsView()
}
