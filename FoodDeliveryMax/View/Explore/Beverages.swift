import SwiftUI

struct Beverages: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack{
            HStack{
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
                
                NavigationLink(destination: Filter()) {
                    Image("filter_ic")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                }
            }
            .padding(.top)
            .padding(.horizontal)
            
            ScrollView(.vertical, showsIndicators: false){
                VStack{
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
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    Beverages()
}
