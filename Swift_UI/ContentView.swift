import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader{ view in
            
            // Principal VStack
            VStack{
                // Header VStack
                VStack{
                    Text("SwiftUI")
                        .foregroundColor(Color.black)
                        .font(.custom("Avenir Black", size: 20))
                        .padding(.top, 60)
                    Text("SWIFT").foregroundColor(Color.black)
                        .font(.custom("Avenir Book", size: 20))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    Text("UI").foregroundColor(Color.black)
                        .font(.custom("Avenir Black", size: 24))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                }
                .frame(width: view.size.width, height: 180, alignment: .top)
                .background(Color.orange)
                // Ignore SafeArea
                //.edgesIgnoringSafeArea(.all)
                HStack{
                    Button(action: {}) {
                        Text("Button 1")
                            .font(.custom("Avenir Medium", size: 17))
                            .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                    }
                    .frame(width: 100, height: 50)
                    .background(.yellow)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.yellow, lineWidth: 10))
                    .offset(x: 50)
                    
                    
                    Spacer()
                    Button(action: {}) {
                        Text("Button 2")
                            .font(.custom("Avenir Medium", size: 17))
                            .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                    }
                    .frame(width: 100, height: 50)
                    .background(.yellow)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.yellow, lineWidth: 10))
                    .offset(x: -50)
                }
                .offset(y: -30)
                
                List {
                    Text("Item 1")
                    Text("Item 2")
                    Text("Item 3")
                    Text("Item 4")
                    Text("Item 5")
                }
            }
            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// VStack = Vertical StackView
// HStack = Horizontal Stack
// ZStack -> One element above other ->  Used with images
