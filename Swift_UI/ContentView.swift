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
                .edgesIgnoringSafeArea(.all)
                List {
                    Text("Item 1")
                    Text("Item 2")
                    Text("Item 3")
                    Text("Item 4")
                    Text("Item 5")
                }
            }
            
        }
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
