import SwiftUI

struct DairyEggs: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView{
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
                    
                    Text("Dairy & Eggs")
                        .font(.customfont(.bold, fontSize: 20))
                        .foregroundColor(.primaryText)
                    
                    Spacer()
                    
                    NavigationLink(destination: Filter()) {
                        Image("filter_ic")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .padding(.trailing)
                    }
                }
                .padding(.top)
                .padding(.horizontal)
                
                HStack {
                    ProductItemView(
                        imageName: "egg_chicken_red",
                        productName: "Egg Chicken Red",
                        description: "4pcs, Price",
                        price: "$1.99",
                        detailView: AnyView(BeefDetail()),
                        imageWidth: 100,
                        imageHeight: 90
                    )
                    .padding(.leading)
                    
                    ProductItemView(
                        imageName: "egg_chicken_white",
                        productName: "Egg Chicken White",
                        description: "180g, Price",
                        price: "$1.50",
                        detailView: AnyView(ChickenDetail()),
                        imageWidth: 100,
                        imageHeight: 90
                    )
                    .padding(.trailing)
                    .padding(.leading)
                }
                .padding(.top)
                
                HStack {
                    ProductItemView(
                        imageName: "egg_pasta",
                        productName: "Egg Pasta",
                        description: "30gm, Price",
                        price: "$15.99",
                        detailView: AnyView(BeefDetail()),
                        imageWidth: 70,
                        imageHeight: 90
                    )
                    .padding(.leading)
                    
                    ProductItemView(
                        imageName: "egg_noodles",
                        productName: "Egg Noodles",
                        description: "2L, Price",
                        price: "$15.99",
                        detailView: AnyView(ChickenDetail()),
                        imageWidth: 70,
                        imageHeight: 90
                    )
                    .padding(.trailing)
                    .padding(.leading)
                }
                .padding(.top)
                HStack {
                    ProductItemView(
                        imageName: "mayinnars_eggless",
                        productName: "Mayonnais Eggless",
                        description: "325ml, Price",
                        price: "$4.99",
                        detailView: AnyView(BeefDetail()),
                        imageWidth: 50,
                        imageHeight: 90
                    )
                    .padding(.leading)
                    
                    ProductItemView(
                        imageName: "egg_noodies_new",
                        productName: "Egg Noodles",
                        description: "330g, Price",
                        price: "$4.99",
                        detailView: AnyView(ChickenDetail()),
                        imageWidth: 100,
                        imageHeight: 90
                    )
                    .padding(.trailing)
                    .padding(.leading)
                }
                .padding(.top)
                HStack {
                    ProductItemView(
                        imageName: "egg_chicken_red",
                        productName: "Egg Chicken Red",
                        description: "4pcs, Price",
                        price: "$1.99",
                        detailView: AnyView(BeefDetail()),
                        imageWidth: 100,
                        imageHeight: 90
                    )
                    .padding(.leading)
                    
                    ProductItemView(
                        imageName: "egg_chicken_white",
                        productName: "Egg Chicken White",
                        description: "180g, Price",
                        price: "$1.50",
                        detailView: AnyView(ChickenDetail()),
                        imageWidth: 100,
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

#Preview {
    DairyEggs()
}
