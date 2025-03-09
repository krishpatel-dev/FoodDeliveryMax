import SwiftUI

struct OrdersView: View {
    // Sample order data
    let orders = [
        Order(id: 1, productName: "Pizza", orderDate: "March 5, 2025", status: "Delivered"),
        Order(id: 2, productName: "Burger", orderDate: "March 2, 2025", status: "In Transit"),
        Order(id: 3, productName: "Coffee", orderDate: "February 28, 2025", status: "Delivered")
    ]
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Your Orders")
                    .font(.customfont(.bold, fontSize: 24))
                    .padding()
                
                Text("Track and manage your orders. You can check order details, status, and history.")
                    .font(.customfont(.regular, fontSize: 16))
                    .foregroundColor(.gray)
                    .padding([.leading, .bottom])
                
                List(orders) { order in
                    NavigationLink(destination: OrderDetailView(order: order)) {
                        OrderRow(order: order)
                    }
                }
                .listStyle(PlainListStyle())
                
                Spacer()
            }
            .navigationBarTitle("Orders", displayMode: .inline)
        }
    }
}

struct Order: Identifiable {
    let id: Int
    let productName: String
    let orderDate: String
    let status: String
}

struct OrderRow: View {
    var order: Order
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(order.productName)
                    .font(.customfont(.bold, fontSize: 18))
                Text(order.orderDate)
                    .font(.customfont(.regular, fontSize: 14))
                    .foregroundColor(.gray)
                Text(order.status)
                    .font(.customfont(.regular, fontSize: 16))
                    .foregroundColor(order.status == "Delivered" ? .green : .orange)
            }
            Spacer()
            Image(systemName: "chevron.right.circle.fill")
                .foregroundColor(.primaryApp)
        }
        .padding(.vertical, 10)
    }
}

struct OrderDetailView: View {
    var order: Order
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(order.productName)
                .font(.customfont(.bold, fontSize: 24))
            
            Text("Ordered on \(order.orderDate)")
                .font(.customfont(.regular, fontSize: 16))
                .foregroundColor(.gray)
            
            Text("Status: \(order.status)")
                .font(.customfont(.medium, fontSize: 18))
                .foregroundColor(order.status == "Delivered" ? .green : .orange)
            
            Button(action: {
                // Handle reordering
            }) {
                Text("Reorder")
                    .font(.customfont(.medium, fontSize: 18))
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    OrdersView()
}
