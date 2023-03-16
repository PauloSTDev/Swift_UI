//
//  DetailsView.swift
//  Swift_UI
//
//  Created by Paulo Afonso Della Mêa dos Santos on 13/03/23.
//

import SwiftUI

struct DetailView: View {
    var person: Person
    var body: some View {
        VStack(spacing: 10) {
            Text("\(person.firstName) \(person.surname)")
                .bold()
            Text("\(person.phoneNumbers[0].number)")
            Text("\(person.address.streetAddress)")
            Text("\(person.address.city)")
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(person: personsArray[0])
    }
}
