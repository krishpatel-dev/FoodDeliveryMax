import SwiftUI

struct Beverages: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State private var showFilterView = false // State to trigger the filter view bottom sheet
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    presentationMode.wrappedValue.dismiss() // Dismiss the current view and go back
                }) {
                    Image("back")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                }
                Spacer()
                
                Text("Beverages")
                    .font(.customfont(.bold, fontSize: 20))
                    .foregroundColor(.primaryText)
                
                Spacer()
                
                Button(action: {
                    withAnimation {
                        showFilterView.toggle() // Show or hide filter view with animation
                    }
                }) {
                    Image("filter_ic")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                }
            }
            .padding(.top)
            .padding(.horizontal)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    HStack {
                        ProductItemView(
                            imageName: "diet_coke",
                            productName: "Beef Bone",
                            description: "355ml, Price",
                            price: "$1.99",
                            detailView: AnyView(BeefDetail()),
                            imageWidth: 50,
                            imageHeight: 90
                        )
                        .padding(.leading)
                        
                        ProductItemView(
                            imageName: "sprite_can",
                            productName: "Sprite Can",
                            description: "325ml, Price",
                            price: "$1.50",
                            detailView: AnyView(ChickenDetail()),
                            imageWidth: 50,
                            imageHeight: 90
                        )
                        .padding(.trailing)
                        .padding(.leading)
                    }
                    .padding(.top)
                    
                    HStack {
                        ProductItemView(
                            imageName: "juice_apple_grape",
                            productName: "Apple & Grape Juice",
                            description: "2L, Price",
                            price: "$15.99",
                            detailView: AnyView(BeefDetail()),
                            imageWidth: 90,
                            imageHeight: 90
                        )
                        .padding(.leading)
                        
                        ProductItemView(
                            imageName: "orenge_juice",
                            productName: "Orange Juice",
                            description: "2L, Price",
                            price: "$15.99",
                            detailView: AnyView(ChickenDetail()),
                            imageWidth: 90,
                            imageHeight: 90
                        )
                        .padding(.trailing)
                        .padding(.leading)
                    }
                    .padding(.top)
                    
                    HStack {
                        ProductItemView(
                            imageName: "cocacola_can",
                            productName: "Coca Cola Can",
                            description: "325ml, Price",
                            price: "$4.99",
                            detailView: AnyView(BeefDetail()),
                            imageWidth: 45,
                            imageHeight: 90
                        )
                        .padding(.leading)
                        
                        ProductItemView(
                            imageName: "pepsi_can",
                            productName: "Pepsi Can",
                            description: "330ml, Price",
                            price: "$4.99",
                            detailView: AnyView(ChickenDetail()),
                            imageWidth: 50,
                            imageHeight: 90
                        )
                        .padding(.trailing)
                        .padding(.leading)
                    }
                    .padding(.top)
                }
            }
            .navigationBarBackButtonHidden(true)
        }
        .overlay(
            // Bottom Sheet
            VStack {
                Spacer()
                
                if showFilterView {
                    Filter(showFilterView: $showFilterView) // Show FilterView as bottom sheet
                        .transition(.move(edge: .bottom)) // Slide from the bottom
                        .animation(.spring(), value: showFilterView) // Spring animation for bottom sheet
                }
            }
        )
    }
}

#Preview {
    Beverages()
}
