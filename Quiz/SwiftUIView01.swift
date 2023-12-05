//
//  SwiftUIView01.swift
//  Quiz
//
//  Created by Nicholas Papierniak on 11/29/23.
//

import SwiftUI

struct SwiftUIView01: View {
    let phrase : String
    var answer : Answers
    @State private var answers = Answers()
    var body: some View {
        VStack{
        
            Image("skin_structure").resizable().frame(width:500, height: 400)
                .padding()
            Text("Human skin regenerates every week.")
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            HStack{
                Button("True"){
                    answers.question1 = 2
                }
                .padding()
                Button("False"){
                    answers.question1 = 1
                }
            }
            .buttonStyle(CustomButtonStyle())
            Spacer()
            NavigationLink("Next Question", destination : SwiftUIView02(phrase: "Question 2", answer : Answers()))
                .font(.title)
                .navigationTitle(phrase)
                .padding()
        }
    }
}

struct SwiftUIView01_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView01(phrase: "Question 1", answer : Answers())
    }
}

struct CustomButtonStyle: ButtonStyle {
    func makeBody (configuration: Configuration) -> some View {
        configuration.label
            .frame (width: 50)
            .font (Font.custom("Marker Felt", size: 24))
            .padding () .background(.black).opacity (configuration.isPressed ? 0.0: 1.0)
            .foregroundColor (.white)
            .clipShape (RoundedRectangle (cornerRadius: 10))
    }
}
