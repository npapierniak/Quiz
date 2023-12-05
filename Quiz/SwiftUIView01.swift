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
    @State private var goToNextView = false
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
                    answers.right += 1
                    goToNextView = true
                }
                .padding()
                Button("False"){
                    goToNextView = true
                }
            }
            .buttonStyle(CustomButtonStyle())
            Spacer()
            NavigationLink(destination: SwiftUIView02(answer : Answers()), isActive: $goToNextView) {
                            EmptyView() // EmptyView used as label as it's invisible
                        }
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
            .frame (width: 80)
            .font (Font.custom("Marker Felt", size: 24))
            .padding () .background(.black).opacity (configuration.isPressed ? 0.0: 1.0)
            .foregroundColor (.white)
            .clipShape (RoundedRectangle (cornerRadius: 10))
    }
}
