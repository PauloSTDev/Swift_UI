//
//  ListNavigationView.swift
//  Swift_UI
//
//  Created by Paulo Afonso Della Mêa dos Santos on 17/03/23.
//

import SwiftUI

struct ListNavigationView: View {
    var body: some View {
        let person: [Person] = personsArray
        NavigationView{
            List {
                ForEach(person, id: \.firstName) { person in
                    
                    NavigationLink("\(person.firstName) \(person.surname)", destination: DetailView(person: person)).bold()
                    VStack(alignment: .leading){
                        
                        Image(person.imageName)
                            .resizable()
                            .frame(height: 125)
                        Text("\(person.phoneNumbers[0].number)")
                            
                    }
                
                }
            }
        }
    }
}

struct ListNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        ListNavigationView()
    }
}
