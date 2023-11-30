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
                Text("What walks on four legs in the morning, two legs in the afternoon, three legs in the evening, and no legs at night?")
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
