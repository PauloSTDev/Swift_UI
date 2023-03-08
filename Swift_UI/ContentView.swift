import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("SwiftUI")
                .foregroundColor(Color.black)
            Text("SWIFT").foregroundColor(Color.black)
            Text("UI").foregroundColor(Color.black)
            List {
                Text("Item 1")
                Text("Item 2")
                Text("Item 3")
                Text("Item 4")
                Text("Item 5")
            }
        }
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.orange/*@END_MENU_TOKEN@*/)
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
