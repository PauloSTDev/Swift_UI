import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        GeometryReader{ view in
            
            // Principal VStack
            VStack{
                HeaderView()
                    .frame(width: view.size.width, height: 220, alignment: .top)
                ListNavigationView()
            }
            .background(Color.white.grayscale(0.3))
            
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
