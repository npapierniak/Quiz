//
//  SwiftUIView02.swift
//  Quiz
//
//  Created by Nicholas Papierniak on 11/30/23.
//

import SwiftUI

struct SwiftUIView02: View {
    let phrase : String
    var body: some View {
            VStack{
                Text("What has 4 legs in the beginning, 2 in the middle, and 3 at the end?")
                    .font(.title)
                    .multilineTextAlignment(.center)
                Spacer()
                NavigationLink("Next Question", destination : SwiftUIView02(phrase: "Question 3"))
                    .font(.title)
                    .navigationTitle(phrase)
        }
    }
}

struct SwiftUIView02_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView02(phrase: "Question 2")
    }
}
