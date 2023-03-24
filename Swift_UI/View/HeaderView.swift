//
//  HeaderView.swift
//  Swift_UI
//
//  Created by Paulo Afonso Della Mêa dos Santos on 17/03/23.
//

import SwiftUI

struct HeaderView: View {
    @Environment(\.horizontalSizeClass)  var horizontalSizeClass
    var body: some View{
        GeometryReader{ view in
            VStack{
                // Header VStack
                VStack{
                    Text("SwiftUI")
                        .foregroundColor(Color.black)
                        .font(.custom("Avenir Black", size: self.horizontalSizeClass == .compact ? 20 : 30))
                        .padding(.top, self.horizontalSizeClass == .compact ? 60 : 90)
                    Text("SWIFT").foregroundColor(Color.black)
                        .font(.custom("Avenir Book", size: self.horizontalSizeClass == .compact ? 20 : 30))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    Text("UI").foregroundColor(Color.black)
                        .font(.custom("Avenir Black", size: self.horizontalSizeClass == .compact ? 24 : 34))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                }
                .frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 180 : 250, alignment: .top)
                .background(Color.orange)
                // Ignore SafeArea
                //.edgesIgnoringSafeArea(.all)
                HStack{
                    Button(action: {}) {
                        Text("Button 1")
                            .font(.custom("Avenir Medium", size: 17))
                            .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                    }
                    .frame(width: self.horizontalSizeClass == .compact ? 100 : 150, height: self.horizontalSizeClass == .compact ? 50 : 75)
                    .background(.yellow)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.yellow, lineWidth: 10))
                    .offset(x: 50)
                    
                    
                    Spacer()
                    Button(action: {}) {
                        Text("Button 2")
                            .font(.custom("Avenir Medium", size: 17))
                            .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                    }
                    .frame(width: self.horizontalSizeClass == .compact ? 100 : 150, height: self.horizontalSizeClass == .compact ? 50 : 75)
                    .background(.yellow)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.yellow, lineWidth: 10))
                    .offset(x: -50)
                }
                .offset(y: self.horizontalSizeClass == .compact ? -25 : -37.5)
            }
        }
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderView()
                .environment(\.horizontalSizeClass, .compact)
                .previewLayout(.fixed(width: 400, height: 220))
            HeaderView()
                .environment(\.horizontalSizeClass, .regular)
                .previewLayout(.fixed(width: 835, height: 310))
        }
        
    }
}
