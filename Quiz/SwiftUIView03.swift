//
//  SwiftUIView03.swift
//  Quiz
//
//  Created by Nicholas Papierniak on 11/30/23.
//

import SwiftUI

struct SwiftUIView03: View {
    let answer : Answers
    @State private var goToNextView = false
    @State private var answers = Answers()
    var body: some View {
        VStack{
            Text("Squirrels can't take fall damage.")
                .font(.title)
                .multilineTextAlignment(.center)
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
            .buttonStyle(CustomButtonStyle2())
            Spacer()
            NavigationLink(destination: SwiftUIView03(answer : Answers()), isActive: $goToNextView) {
                EmptyView()
            }
        }
    }
}

struct SwiftUIView03_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView03(answer : Answers())
    }
}

struct CustomButtonStyle2: ButtonStyle {
    func makeBody (configuration: Configuration) -> some View {
        configuration.label
            .frame (width: 66)
            .font (Font.custom("Zapfino", size: 20))
            .padding () .background(.black).opacity (configuration.isPressed ? 0.0: 1.0)
            .foregroundColor (.white)
            .clipShape (RoundedRectangle (cornerRadius: 10))
    }
}
