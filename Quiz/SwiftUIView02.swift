//
//  SwiftUIView02.swift
//  Quiz
//
//  Created by Nicholas Papierniak on 11/30/23.
//

import SwiftUI

struct SwiftUIView02: View {
    let phrase : String
    let answer : Answers
    var body: some View {
        VStack{
            Text("What walks on four legs in the morning, two legs in the afternoon, three legs in the evening, and no legs at night?")
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            Text("1. Time").font(.title)
                .padding()
            Text("2. Humans").font(.title)
                .padding()
            Text("3. Race").font(.title)
                .padding()
            Text("4. Skinwalker").font(.title)
                .padding()
            Spacer()
            NavigationLink("Next Question", destination : SwiftUIView03(phrase: "Question 3"))
                .font(.title)
                .navigationTitle(phrase)
        }
    }
}

struct SwiftUIView02_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView02(phrase: "Question 2", answer : Answers())
    }
}
