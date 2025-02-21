import SwiftUI

struct ExploreView: View {
    var body: some View {
        VStack{
            Text("Find Products")
                .font(.customfont(.bold, fontSize: 20))
                .foregroundColor(.primaryText)
                .padding(.vertical)
            
            SearchTextField(searchText: .constant(""), placeholder: "Search Store")
                .padding(.horizontal)
            
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    
                    HStack{
                        CategoryCard(
                            borderColor: Color.green.opacity(0.9),
                            backgroundColor: Color.green.opacity(0.1),
                            imageName: "frash_fruits",
                            text: "Fresh Fruits & Vegetables",
                            detailView: AnyView(Beverages())
                        )
                        .padding(.trailing)
                        
                        CategoryCard(
                            borderColor: Color.orange.opacity(0.9),
                            backgroundColor: Color.orange.opacity(0.1),
                            imageName: "cooking_oil",
                            text: "Cooking Oil & Ghee",
                            detailView: AnyView(Beverages())
                        )
                    }
                    .padding(.bottom)
                    
                    HStack{
                        CategoryCard(
                            borderColor: Color.red.opacity(0.9),
                            backgroundColor: Color.red.opacity(0.1),
                            imageName: "meat_fish",
                            text: "Meat & Fish",
                            detailView: AnyView(Beverages())
                        )
                        .padding(.trailing)
                        
                        CategoryCard(
                            borderColor: Color.purple.opacity(0.9),
                            backgroundColor: Color.purple.opacity(0.1),
                            imageName: "bakery_snacks",
                            text: "Bakery & Snacks",
                            detailView: AnyView(Beverages())
                        )
                    }
                    .padding(.bottom)
                    
                    HStack{
                        CategoryCard(
                            borderColor: Color.yellow.opacity(0.9),
                            backgroundColor: Color.yellow.opacity(0.1),
                            imageName: "dairy_eggs",
                            text: "Dairy & Eggs",
                            detailView: AnyView(DairyEggs())
                        )
                        .padding(.trailing)
                        
                        CategoryCard(
                            borderColor: Color.blue.opacity(0.9),
                            backgroundColor: Color.blue.opacity(0.1),
                            imageName: "beverages",
                            text: "Beverages",
                            detailView: AnyView(Beverages())
                        )
                    }
                    .padding(.bottom)
                    
                    HStack{
                        CategoryCard(
                            borderColor: Color.indigo.opacity(0.9),
                            backgroundColor: Color.indigo.opacity(0.1),
                            imageName: "frash_fruits",
                            text: "Fresh Fruits & Vegetables",
                            detailView: AnyView(Beverages())
                        )
                        .padding(.trailing)
                        
                        CategoryCard(
                            borderColor: Color.black.opacity(0.9),
                            backgroundColor: Color.black.opacity(0.1),
                            imageName: "cooking_oil",
                            text: "Cooking Oil & Ghee",
                            detailView: AnyView(Beverages())
                        )
                    }
                }
                .padding(.bottom)
            }
        }
    }
}

#Preview {
    ExploreView()
}
