import SwiftUI

struct HomeView: View {
    // Array of banner images
    let bannerImages = ["banner_top1", "banner_top2", "banner_top3", "banner_top4", "banner_top5"]
    
    @State private var currentBannerIndex = 0
    @State private var timer: Timer?
    // Added: offsetX state to control sliding animation
    @State private var offsetX: CGFloat = 0
    
    var body: some View {
        VStack {
            Image("color_logo")
                .resizable()
                .scaledToFit()
                .ignoresSafeArea()
                .frame(width: 25, height: 30)
                .padding(.bottom, 1)
            
            HStack {
                Image("location")
                    .resizable()
                    .ignoresSafeArea()
                    .frame(width: 15, height: 17)
                
                Text("Vadodara, Gujarat")
                    .font(.customfont(.semibold, fontSize: 15))
                    .foregroundColor(.darkGray)
            }
            .padding(.bottom, 5)
            
            SearchTextField(searchText: .constant(""), placeholder: "Search Store")
                .padding(.horizontal)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    // Modified Banner Section without sliding animation
                    VStack {
                        // Display only the current image
                        Image(bannerImages[currentBannerIndex])
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity, idealHeight: 130)
                            .clipped()
                            .transition(.opacity) // Fade transition
                            .animation(.easeInOut(duration: 0.5), value: currentBannerIndex)
                            .padding(.bottom, -7)
                        
                        HStack(spacing: 8) {
                            ForEach(bannerImages.indices, id: \.self) { index in
                                Circle()
                                    .frame(width: 8, height: 8)
                                    .foregroundColor(currentBannerIndex == index ? .primaryApp : .gray.opacity(0.5))
                            }
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom, -10)
                    .onAppear {
                        startBannerChangeTimer()
                    }
                    .onDisappear {
                        timer?.invalidate()
                    }
                    
                    HStack {
                        Text("Exclusive Offer")
                            .font(.customfont(.semibold, fontSize: 19))
                            .foregroundColor(.primaryText)
                            .padding(.leading)
                        Spacer()
                        
                        Button(action: {}) {
                            Text("See all")
                                .padding()
                                .foregroundColor(.primaryApp)
                                .font(.customfont(.semibold, fontSize: 14))
                                .padding(.leading)
                        }
                    }
                    .padding(.top, 5)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ProductItemView(
                                imageName: "banana",
                                productName: "Organic Bananas",
                                description: "7pcs, Priceg",
                                price: "$4.99",
                                detailView: AnyView(BananaDetail()),
                                imageWidth: 110,
                                imageHeight: 90
                            )
                            .padding(.leading)
                            
                            ProductItemView(
                                imageName: "apple_red",
                                productName: "Red Apple",
                                description: "1kg, Priceg",
                                price: "$4.99",
                                detailView: AnyView(AppleDetail()),
                                imageWidth: 120,
                                imageHeight: 90
                            )
                            .padding(.leading, 8)
                            
                            ProductItemView(
                                imageName: "banana",
                                productName: "Organic Bananas",
                                description: "7pcs, Priceg",
                                price: "$4.99",
                                detailView: AnyView(BananaDetail()),
                                imageWidth: 110,
                                imageHeight: 90
                            )
                            .padding(.leading, 8)
                        }
                    }
                    
                    // Best Selling Section
                    HStack {
                        Text("Best Selling")
                            .font(.customfont(.semibold, fontSize: 19))
                            .foregroundColor(.primaryText)
                            .padding(.leading)
                        Spacer()
                        
                        Button(action: {}) {
                            Text("See all")
                                .padding()
                                .foregroundColor(.primaryApp)
                                .font(.customfont(.semibold, fontSize: 14))
                                .padding(.leading)
                        }
                    }
                    .padding(.top, 5)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ProductItemView(
                                imageName: "bell_pepper_red",
                                productName: "Bell Pepper Red",
                                description: "1kg, Priceg",
                                price: "$4.99",
                                detailView: AnyView(PepperDetail()),
                                imageWidth: 110,
                                imageHeight: 90
                            )
                            .padding(.leading)
                            
                            ProductItemView(
                                imageName: "ginger",
                                productName: "Ginger",
                                description: "250gm, Priceg",
                                price: "$4.99",
                                detailView: AnyView(GingerDetail()),
                                imageWidth: 110,
                                imageHeight: 90
                            )
                            .padding(.leading, 8)
                            
                            ProductItemView(
                                imageName: "bell_pepper_red",
                                productName: "Bell Pepper Red",
                                description: "1kg, Priceg",
                                price: "$4.99",
                                detailView: AnyView(PepperDetail()),
                                imageWidth: 110,
                                imageHeight: 90
                            )
                            .padding(.leading, 8)
                        }
                    }
                    
                    // Groceries Section
                    HStack {
                        Text("Groceries")
                            .font(.customfont(.semibold, fontSize: 19))
                            .foregroundColor(.primaryText)
                            .padding(.leading)
                        Spacer()
                        
                        Button(action: {}) {
                            Text("See all")
                                .padding()
                                .foregroundColor(.primaryApp)
                                .font(.customfont(.semibold, fontSize: 14))
                                .padding(.leading)
                        }
                    }
                    .padding(.top, 5)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            Button(action: {}) {
                                HStack {
                                    Image("pulses")
                                        .resizable()
                                        .frame(width: 70, height: 70)
                                        .padding(.leading, 15)
                                        .padding(.top, 15)
                                        .padding(.bottom, 15)
                                    
                                    Text("Pulses")
                                        .font(.customfont(.semibold, fontSize: 19))
                                        .foregroundColor(.primaryText)
                                        .padding(.trailing, 70)
                                }
                            }
                            .background(Color(hex: "#fbe1cd"))
                            .cornerRadius(10)
                            .padding(.leading)
                            
                            Button(action: {}) {
                                HStack {
                                    Image("rice")
                                        .resizable()
                                        .frame(width: 70, height: 70)
                                        .padding(.leading, 15)
                                        .padding(.top, 15)
                                        .padding(.bottom, 15)
                                    
                                    Text("Rice")
                                        .font(.customfont(.semibold, fontSize: 19))
                                        .foregroundColor(.primaryText)
                                        .padding(.trailing, 85)
                                }
                            }
                            .background(Color(hex: "#dafbd9"))
                            .cornerRadius(10)
                            .padding(.leading)
                        }
                    }
                    .padding(.bottom, 16)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ProductItemView(
                                imageName: "beef_bone",
                                productName: "Beef Bone",
                                description: "1kg, Priceg",
                                price: "$4.99",
                                detailView: AnyView(BeefDetail()),
                                imageWidth: 110,
                                imageHeight: 90
                            )
                            .padding(.leading)
                            
                            ProductItemView(
                                imageName: "broiler_chicken",
                                productName: "Broiler Chicken",
                                description: "1kg, Priceg",
                                price: "$4.99",
                                detailView: AnyView(ChickenDetail()),
                                imageWidth: 110,
                                imageHeight: 90
                            )
                            .padding(.leading, 8)
                            
                            ProductItemView(
                                imageName: "beef_bone",
                                productName: "Beef Bone",
                                description: "1kg, Priceg",
                                price: "$4.99",
                                detailView: AnyView(BeefDetail()),
                                imageWidth: 110,
                                imageHeight: 90
                            )
                            .padding(.leading, 8)
                        }
                    }
                }
                .padding(.bottom)
            }
        }
    }
    
    func startBannerChangeTimer() {
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { _ in
            withAnimation(.easeInOut(duration: 0.5)) {
                if currentBannerIndex < bannerImages.count - 1 {
                    currentBannerIndex += 1
                } else {
                    currentBannerIndex = 0 // Reset to first image with animation
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
