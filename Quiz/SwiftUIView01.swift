//
//  SwiftUIView01.swift
//  Quiz
//
//  Created by Nicholas Papierniak on 11/29/23.
//

import SwiftUI

struct SwiftUIView01: View {
    let phrase : String
    var body: some View {
            VStack{
                Spacer()
                NavigationLink("Next Question", destination : SwiftUIView02(phrase: "Question 2"))
                    .font(.title)
                    .navigationTitle(phrase)
        }
    }
}

struct SwiftUIView01_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView01(phrase: "Question 1")
    }
}
