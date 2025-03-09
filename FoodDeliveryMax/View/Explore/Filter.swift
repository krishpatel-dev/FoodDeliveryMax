import SwiftUI

struct Filter: View {
    @Binding var showFilterView: Bool
    
    @State private var checkStates1: [String: Bool] = [
        "Eggs": false,
        "Noodles & Pasta": false,
        "Chips & Crisps": false,
        "Fast Food": false,
    ]
    
    @State private var checkStates2: [String: Bool] = [
        "Individual Collection": false,
        "Cocola": false,
        "Ifad": false,
        "Kazi Farmas": false
    ]
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    withAnimation {
                        showFilterView = false // Hide filter view when cross button is tapped
                    }
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
                .frame(width: .infinity, height: 700)
                .overlay(
                    VStack(alignment: .leading) {
                        Text("Categories")
                            .font(.customfont(.semibold, fontSize: 22))
                            .padding(.leading)
                            .padding(.top, 55)
                        
                        ForEach(checkStates1.keys.sorted(), id: \.self) { key in
                            HStack {
                                Button(action: {
                                    checkStates1[key]?.toggle()
                                }) {
                                    Image(checkStates1[key] == true ? "checkbox_check" : "checkbox")
                                        .resizable()
                                        .frame(width: 20, height: 20)
                                        .padding()
                                }
                                
                                Text(key)
                                    .font(.customfont(.regular, fontSize: 15))
                                    .foregroundColor(checkStates1[key] == true ? .green : .black)
                                    .padding(.leading, -10)
                            }
                            .padding(.bottom, -20)
                        }
                        
                        Text("Brand")
                            .font(.customfont(.semibold, fontSize: 22))
                            .padding(.leading)
                            .padding(.top, 30)
                        
                        ForEach(checkStates2.keys.sorted(), id: \.self) { key in
                            HStack {
                                Button(action: {
                                    checkStates2[key]?.toggle()
                                }) {
                                    Image(checkStates2[key] == true ? "checkbox_check" : "checkbox")
                                        .resizable()
                                        .frame(width: 20, height: 20)
                                        .padding()
                                }
                                
                                Text(key)
                                    .font(.customfont(.regular, fontSize: 15))
                                    .foregroundColor(checkStates2[key] == true ? .green : .black)
                                    .padding(.leading, -10)
                            }
                            .padding(.bottom, -20)
                        }
                        
                        Button(action: {}) {
                            Text("Apply Filter")
                                .font(.customfont(.semibold, fontSize: 18))
                                .foregroundColor(.white)
                                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                                .background(Color.primaryApp)
                                .cornerRadius(20)
                                .padding(.horizontal)
                                .padding(.bottom)
                        }
                        .padding(.top, 180)
                    }
                    .padding(.bottom, 50) // Stay above the home indicator
                )
                .ignoresSafeArea(edges: .bottom)
        }
        .background(Color.white) // Background color of the filter sheet
    }
}

struct Filter_Previews: PreviewProvider {
    @State static var showFilterView = true // Add state for showFilterView
    
    static var previews: some View {
        Filter(showFilterView: $showFilterView)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
