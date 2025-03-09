import SwiftUI

struct DeliveryAddressView: View {
    @State private var addresses = [
        "123, Baker Street, London, UK",
        "456, Elm Street, Springfield, IL, USA"
    ]
    
    @State private var newAddress: String = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Delivery Address")
                    .font(.customfont(.bold, fontSize: 24))
                    .padding()
                
                Text("Manage and update your delivery addresses.")
                    .font(.customfont(.regular, fontSize: 16))
                    .foregroundColor(.gray)
                    .padding([.leading, .bottom])
                
                List {
                    ForEach(addresses, id: \.self) { address in
                        Text(address)
                            .font(.customfont(.regular, fontSize: 16))
                    }
                    .onDelete(perform: deleteAddress)
                }
                
                HStack {
                    TextField("Add New Address", text: $newAddress)
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(10)
                    
                    Button(action: {
                        addNewAddress()
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.primaryApp)
                            .font(.system(size: 30))
                    }
                    .padding(.trailing)
                }
                .padding()
                
                Spacer()
            }
            .navigationBarTitle("Addresses", displayMode: .inline)
        }
    }
    
    func deleteAddress(at offsets: IndexSet) {
        addresses.remove(atOffsets: offsets)
    }
    
    func addNewAddress() {
        if !newAddress.isEmpty {
            addresses.append(newAddress)
            newAddress = ""
        }
    }
}

#Preview {
    DeliveryAddressView()
}
