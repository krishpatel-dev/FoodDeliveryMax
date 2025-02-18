import SwiftUI

struct Filter: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        VStack{
            HStack{
                Button(action: {
                    presentationMode.wrappedValue.dismiss() // Dismiss the current view and go back
                }) {
                    Image("close")
                        .resizable()
                        .frame(width: 27, height: 27)
                        .padding(.bottom, 5)
                }
                Spacer()
                
                Text("Filters")
                    .font(.customfont(.bold, fontSize: 20))
                    .foregroundColor(.primaryText)
                    .padding(.trailing, 155)
            }
            .padding(.top)
            .padding(.horizontal)
            .padding(.bottom)
            
            
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.black.opacity(0.07))
                .frame(width: .infinity, height: .infinity)
                .overlay(
                    VStack{  // Align text to leading
                        Text("Categories")
                            .font(.customfont(.semibold, fontSize: 20))
                            .padding(.trailing)
                            .padding(.top)
                    }
                        .frame(maxHeight: .infinity, alignment: .top)
                )
                .ignoresSafeArea(edges: .bottom)
            
        }
        .navigationBarBackButtonHidden(true)
        .frame(maxHeight: .infinity, alignment: .leading)
    }
}

#Preview {
    Filter()
}
