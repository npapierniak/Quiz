//
//  SwiftUIView05.swift
//  Quiz
//
//  Created by Nicholas Papierniak on 12/6/23.
//

import SwiftUI

struct SwiftUIView05: View {
    let answer : Answers
    @State private var goToNextView = false
    @State private var answers = Answers()
    var body: some View {
        VStack{

            Text("Thank you for taking the quiz!!")
                .font(Font.custom("Kohinoor Telugu", size: 30))
                .padding()
            Text("Here are your results")
                .font(Font.custom("Kohinoor Telugu", size: 30))
                .padding()
            Text("You got \(answer.right) out of 4 questions right")
                .font(Font.custom("Kohinoor Telugu", size: 30))
                .padding()
            if answer.right < 2
            {
                Text("You may need to study...")
                    .font(Font.custom("Kohinoor Telugu", size: 30))
                    .padding()
            } else
            {
                Text("Good job!!!")
                    .font(Font.custom("Kohinoor Telugu", size: 30))
                    .padding()
            }
            Spacer()
        }
    }
}

struct SwiftUIView05_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView05(answer : Answers())
    }
}
