import SwiftUI

struct HelpView: View {
    @State private var searchQuery: String = ""
    
    let faqs = [
        FAQ(question: "How do I reset my password?", answer: "Go to 'Settings', tap 'Change Password', and follow the instructions."),
        FAQ(question: "How can I contact customer support?", answer: "You can contact support via email at support@company.com or call our hotline."),
        FAQ(question: "How do I track my order?", answer: "Go to 'Orders' in the app to track the status of your orders in real-time.")
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Help & Support")
                    .font(.customfont(.bold, fontSize: 24))
                    .padding()
                
                Text("Find answers to common questions or get in touch with our support team.")
                    .font(.customfont(.regular, fontSize: 16))
                    .foregroundColor(.gray)
                    .padding([.leading, .bottom])
                
                TextField("Search for help", text: $searchQuery)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .padding([.leading, .trailing])
                
                List {
                    ForEach(faqs.filter { $0.question.lowercased().contains(searchQuery.lowercased()) || searchQuery.isEmpty }, id: \.id) { faq in
                        VStack(alignment: .leading) {
                            Text(faq.question)
                                .font(.customfont(.bold, fontSize: 18))
                            Text(faq.answer)
                                .font(.customfont(.regular, fontSize: 16))
                                .foregroundColor(.gray)
                        }
                        .padding(.vertical, 10)
                    }
                }
                .listStyle(PlainListStyle())
                
                Spacer()
            }
            .navigationBarTitle("Help", displayMode: .inline)
        }
    }
}

struct FAQ: Identifiable {
    let id = UUID()
    let question: String
    let answer: String
}

#Preview {
    HelpView()
}
