import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("SwiftUI")
            Text("Swift")
            Text("UI")
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
